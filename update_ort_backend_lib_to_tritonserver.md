1. Follow Step 1 of https://github.com/triton-inference-server/server/tree/r23.12?tab=readme-ov-file#serve-a-model-in-3-easy-steps to pull triton `server` repo to local and fetch test models
2. Build ORT backend lib using `sh prep_cmake_ort_lib.sh`
   1. preprequite: update ort binaries path, cuda/trt paths, cuda/ort/triton versions in bash script
3. Launch tritonserver image without calling tritonserver:
   1. i.e `sudo docker run -it --rm --gpus='"device=0"' "--cap-add=SYS_ADMIN" --ulimit memlock=-1 --ulimit stack=67108864 --net=host -v /path/to/your/triton_repo/server/docs/examples/model_repository:/models nvcr.io/nvidia/tritonserver:23.12-py3 bash`
4. Replace `libtriton_onnxruntime.so` under `/opt/tritonserver/backends/onnxruntime`
5. Launch tritonserver app by accessing same container, compare launching printouts
   1. i.e  `sudo docker exec -it YOUR_TRITONSERVER_CONTAINER_ID tritonserver --model-repository=/models`
6. Follow Step 3 of https://github.com/triton-inference-server/server/tree/r23.12?tab=readme-ov-file#serve-a-model-in-3-easy-steps to launch client app and run models