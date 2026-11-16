#include <algorithm>
#include <chrono>
#include <cmath>
#include <cuda_runtime.h>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>


__global__ void add(const float* A, const float* B,
                    float* C, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) C[i] = A[i] + B[i];
}

