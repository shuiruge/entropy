/**

Simulate the starling flock in 2-dimensional space.

Compile with

```sh
gcc -Ofast -fopenmp -march=native flock.c -lm -o flock.out
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

#ifndef GROUP_SIZE
#  define GROUP_SIZE 4000
#endif
#ifndef RAND_SEED
#  define RAND_SEED 42
#endif
#ifndef INIT_WIDTH
#  define INIT_WIDTH 1
#endif
#ifndef INIT_HEIGHT
#  define INIT_HEIGHT 1
#endif
#ifndef INIT_SPEED
#  define INIT_SPEED 1
#endif
// NEIGHBORS shall be smaller than GROUP_SIZE.
#ifndef NEIGHBORS
#  define NEIGHBORS 5
#endif
#ifndef TIME_INTERVAL
#  define TIME_INTERVAL (1E-2)
#endif
#ifndef ITERATIONS
#  define ITERATIONS 2000
#endif

struct Bird {
  float x, y;
  float vx, vy;
  struct Bird* neighbors[NEIGHBORS];
  float neighbor_distances[NEIGHBORS];
};

struct Bird flock[GROUP_SIZE];

float frand(float min, float max) {
  return min + (max - min) * ((float)rand() / (float)RAND_MAX);
}

void initialize_bird(struct Bird* bird) {
  bird->x = frand(0, INIT_WIDTH);
  bird->y = frand(0, INIT_HEIGHT);
  bird->vx = frand(0, INIT_SPEED);
  bird->vy = frand(0, INIT_SPEED);
}

void initialize_flock() {
  for (int i = 0; i < GROUP_SIZE; i++) {
    initialize_bird(&flock[i]);
  }
}

void initialize_neighbors(struct Bird* bird) {
  for (int i = 0; i < NEIGHBORS; i++) {
    //bird->neighbors[i] = NULL;
    bird->neighbor_distances[i] = FLT_MAX;
  }
}

float fsqrt(float x) {
  return (float) sqrt((double) x);
}

void update_neighbors(struct Bird* central, struct Bird* ambient) {
  float dx = ambient->x - central->x;
  float dy = ambient->y - central->y;
  float distance = fsqrt(dx * dx + dy * dy);

  // Find the position for the ambient in the neighbors of the central.
  int pos = -1;
  for (int i = NEIGHBORS-1; i >= 0; i--) {
    if (distance > central->neighbor_distances[i]) break;
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
  central->neighbor_distances[pos] = distance;
}

void update_flock() {
  // Use OpenMP to parellel evolution for each bird.
  #pragma omp parallel for collapse(1)
  for (int i = 0; i < GROUP_SIZE; i++) {
    initialize_neighbors(&flock[i]);
    for (int j = 0; j < GROUP_SIZE; j++) {
      if (i == j) continue;
      update_neighbors(&flock[i], &flock[j]);
    }

    // Compute average velocity.
    float avg_vx = 0;
    float avg_vy = 0;
    for (int j = 0; j < NEIGHBORS; j++) {
      avg_vx += flock[i].neighbors[j]->vx;
      avg_vy += flock[i].neighbors[j]->vy;
    }
    avg_vx /= NEIGHBORS;
    avg_vy /= NEIGHBORS;

    // Update.
    flock[i].vx = avg_vx;
    flock[i].vy = avg_vy;
    flock[i].x += flock[i].vx * TIME_INTERVAL;
    flock[i].y += flock[i].vy * TIME_INTERVAL;
  }
}

int main() {
  srand(RAND_SEED);
  initialize_flock();

  for (int i = 0; i < ITERATIONS; i++) {
    update_flock();
  }

  // Send the result to stdout.
  for (int i = 0; i < GROUP_SIZE; i++) {
    printf("%lf,%lf,%lf,%lf\n", flock[i].x, flock[i].y, flock[i].vx, flock[i].vy);
  }

  return 0;
}
