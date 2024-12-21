/**

Compile with, for example,

```sh
gcc -Ofast -fopenmp -march=native test.c -lm -o test.out
```

By default, OpenMP will use all the CPU threads. To adjust the CPU usage,
use `OMP_NUM_THREADS`. For example,

```sh
OMP_NUM_THREADS=14 ./test.out
```

*/

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <math.h>
#include <float.h>

#define BATCH 512
#define DIMENSION 1024

float tensor[BATCH][DIMENSION][DIMENSION];
float result[BATCH][DIMENSION][DIMENSION];

float frand(float min, float max) {
  return min + (max - min) * ((float)rand() / (float)RAND_MAX);
}

void initialize() {
  #pragma omp parallel for collapse(1)
  for (int i = 0; i < BATCH; i++) {
    for (int j = 0; j < DIMENSION; j++) {
      for (int k = 0; k < DIMENSION; k++) {
        tensor[i][j][k] = frand(-1, 1);
      }
    }
  }
}

void matmul() {
  #pragma omp parallel for collapse(1)
  for (int i = 0; i < BATCH; i++) {
    for (int j = 0; j < DIMENSION; j++) {
      for (int k = 0; k < DIMENSION; k++) {
        result[i][j][k] = 0;
        for (int l = 0; l < DIMENSION; l++) {
          result[i][j][k] += tensor[i][j][l] * tensor[i][l][k];
        }
      }
    }
  }
}

int main() {
  printf("Initializing......\n");
  initialize();

  printf("Computing......\n");
  matmul();
  
  // Show some results.
  for (int k = 0; k < DIMENSION; k++) {
    printf("A[0][0][%d] = %lf\n", k, result[0][0][k]);
  }

  return 0;
}

