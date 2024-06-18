/**

Simulate the starling flock in 2-dimensional space.

Compile with, for example,

```sh
gcc -Ofast -fopenmp -march=native flock.c -lm -o flock.out \
  -DDIMENSION=2 \
  -DRAND_SEED=42 \
  -DINIT_WIDTH=1 \
  -DINIT_HEIGHT=1 \
  -DINIT_SPEED=1 \
  -DNEIGHBORS=5 \
  -DTIME_INTERVAL=0.01 \
  -DITERATIONS=2000 \
  -DGROUP_SIZE=4000
```

By default, OpenMP will use all the CPU threads. To adjust the CPU usage,
use `OMP_NUM_THREADS`. For example,

```sh
OMP_NUM_THREADS=14 ./flock.out
```

*/

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <math.h>
#include <float.h>
#include <assert.h>

struct Bird {
  float x[DIMENSION];
  float v[DIMENSION];
  struct Bird* neighbors[NEIGHBORS];
  float neighbor_distances[NEIGHBORS];
};

struct Bird flock[GROUP_SIZE];

float frand(float min, float max) {
  return min + (max - min) * ((float)rand() / (float)RAND_MAX);
}

void initialize_bird(struct Bird* bird) {
  for (int i = 0; i < DIMENSION; i++) {
    bird->x[i] = frand(0, INIT_WIDTH);
    bird->v[i] = frand(0, INIT_WIDTH);
  }
}

void initialize_flock() {
  for (int i = 0; i < GROUP_SIZE; i++) {
    initialize_bird(&flock[i]);
  }
}

void initialize_neighbors(struct Bird* bird) {
  for (int i = 0; i < NEIGHBORS; i++) {
    // For our situation, initializing neighbor distances is sufficient.
    // Initializing neighbors like `bird->neighbor[i] = NULL` may cause
    // error when doing parallel computing.
    bird->neighbor_distances[i] = FLT_MAX;
  }
}

float fsqrt(float x) {
  return (float) sqrt((double) x);
}

// We use L2-norm as distance. But, in our situation, all we use about
// distance is its monotonicity. So, returning distance square is also
// valid, but saves lots of computation.
float distance(float* x, float* y) {
  float d2 = 0;
  for (int i = 0; i < DIMENSION; i++) {
    float dx = x[i] - y[i];
    d2 += dx * dx;
  }
  return d2;
  //return fsqrt(d2);
}

void update_neighbors(struct Bird* central, struct Bird* ambient) {
  if (central == ambient) return;  // the same bird.

  float d = distance(central->x, ambient->x);

  // Find the position for the ambient in the neighbors of the central.
  int pos = -1;
  for (int i = NEIGHBORS-1; i >= 0; i--) {
    if (d > central->neighbor_distances[i]) break;
    pos = i;
  }
  if (pos == -1) return;  // if not close enough, update nothing.

  // Insert the ambient to the neighbors of the central, while keeping
  // the ascent order of the neighbor distances to the central.
  // Before insertion, we shall shift the neighbors with distance greater
  // than ambient.
  for (int j = NEIGHBORS-1; j >= pos; j--) {
    central->neighbors[j] = central->neighbors[j-1];
    central->neighbor_distances[j] = central->neighbor_distances[j-1];
  }
  // After shifting, insert the ambient.
  central->neighbors[pos] = ambient;
  central->neighbor_distances[pos] = d;
}

void update_flock() {
  // Use OpenMP to parellel evolution for each bird.
  #pragma omp parallel for collapse(1)
  for (int i = 0; i < GROUP_SIZE; i++) {
    // Update flock[i].neighbors
    initialize_neighbors(&flock[i]);
    for (int j = 0; j < GROUP_SIZE; j++) {
      update_neighbors(&flock[i], &flock[j]);
    }

    // Update flock[i].x and flock[i].v
    for (int j = 0; j < DIMENSION; j++) {
      // Compute average velocity along dimension j.
      float avg_v = 0;
      for (int k = 0; k < NEIGHBORS; k++) {
        avg_v += flock[i].neighbors[k]->v[j];
      }
      avg_v /= NEIGHBORS;

      // Update x[j] and v[j].
      flock[i].v[j] = avg_v;
      flock[i].x[j] += flock[i].v[j] * TIME_INTERVAL;
    }
  }
}

// TODO: fix the bug caused by OMP.
void update_flock_v2() {
  // Use OpenMP to parellel evolution for each bird.
  #pragma omp parallel for collapse(1)
  for (int i = 0; i < GROUP_SIZE; i++) {
    //printf("a");  // this solves the segmentfault caused by OMP.
    // Update flock[i].neighbors
    initialize_neighbors(&flock[i]);
    for (int j = 0; j < NEIGHBORS; j++) {
      update_neighbors(&flock[i], flock[i].neighbors[j]);
      for (int k = 0; k < NEIGHBORS; k++) {
        update_neighbors(&flock[i], flock[i].neighbors[j]->neighbors[k]);
      }
    }

    // Update flock[i].x and flock[i].v
    for (int j = 0; j < DIMENSION; j++) {
      // Compute average velocity along dimension j.
      float avg_v = 0;
      for (int k = 0; k < NEIGHBORS; k++) {
        avg_v += flock[i].neighbors[k]->v[j];
      }
      avg_v /= NEIGHBORS;

      // Update x[j] and v[j].
      flock[i].v[j] = avg_v;
      flock[i].x[j] += flock[i].v[j] * TIME_INTERVAL;
    }
  }
}


int main() {
  assert(GROUP_SIZE > NEIGHBORS);
  srand(RAND_SEED);
  initialize_flock();

  for (int i = 0; i < ITERATIONS; i++) {
    if (i == 0) {
      update_flock();
    } else {
      update_flock();  // before bugfix.
      //update_flock_v2();  // after bugfix.
    }
  }

  // Send the result to stdout.
  for (int i = 0; i < GROUP_SIZE; i++) {
    for (int j = 0; j < DIMENSION; j++) {
      if (j > 0) printf(",");
      printf("%lf", flock[i].x[j]);
    }
    printf(";");
    for (int j = 0; j < DIMENSION; j++) {
      if (j > 0) printf(",");
      printf("%lf", flock[i].v[j]);
    }
    printf("\n");
  }

  return 0;
}
