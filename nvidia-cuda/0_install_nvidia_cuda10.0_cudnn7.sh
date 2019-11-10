# (Optional) Uninstall old version CUDA Toolkit such as:
sudo apt update
sudo apt purge cuda

# Install CUDA Toolkit 10.0 and cuDNN 7.0 as follows:
wget https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1604-10-0-local-10.0.130-410.48_1.0-1_amd64

sudo apt-get --purge remove "*cublas*" "cuda*" "nvidia-cuda*"
sudo apt-get --purge remove "*nvidia*"

sudo apt-get install software-properties-common
sudo apt-get update

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt install nvidia-430

sudo dpkg -i cuda-repo-ubuntu1604-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub

sudo apt-get update
sudo apt install cuda-toolkit-10-0
sudo apt-get update

# Reboot the system to load the NVIDIA drivers.
# Set up the development environment by modifying the PATH and LD_LIBRARY_PATH variables, also add them to the end of .bashrc file:
export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
