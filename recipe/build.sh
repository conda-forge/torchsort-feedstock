if [[ "${cuda_compiler_version:-None}" == 13.* ]]; then
    # CUDA 13 removed compilation support for architectures below 7.5.
    export TORCH_CUDA_ARCH_LIST="7.5;8.0;8.6;9.0;10.0;12.0+PTX"
else
    export TORCH_CUDA_ARCH_LIST="5.0;6.0;7.0;7.5;8.0;8.6;9.0;10.0;12.0+PTX"
fi
pip install -v .
