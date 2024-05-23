mkdir -p build
cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=`pwd`/install \
      -DTRITON_BUILD_CUDA_VERSION=12.3 \
      -DTRITON_BUILD_CUDA_HOME=/usr/local/cuda-12.3 \
      -DTRITON_BUILD_ONNXRUNTIME_VERSION=1.17.0 \
      -DONNXRUNTIME_LIBRARY=/path/to/your/onnxruntime-linux-x64-gpu-1.17.0/ \
      -DTRITON_ONNXRUNTIME_INCLUDE_PATHS=/path/to/your/onnxruntime-linux-x64-gpu-1.17.0/include \
      -DTRITON_ONNXRUNTIME_LIB_PATHS=//path/to/your/onnxruntime-linux-x64-gpu-1.17.0/lib \
      -DTRITON_BUILD_CONTAINER_VERSION=23.12 \
      -DTRITON_ENABLE_ONNXRUNTIME_TENSORRT=ON \
      -DTRITON_BUILD_TENSORRT_HOME=/path/to/your/TensorRT-8.6.1.6.Linux.x86_64-gnu.cuda-12.0 \
      -DTRITON_CORE_REPO_TAG=r23.12 ..
make install