# ml-server-setup-scripts
Bunch of scripts to setup a GPU machine

## CUDA and DOCKER installations:
```bash 0_install_nvidia_cuda90.sh```
install nvidia-cuda9.0 drivers

```bash 1_setup_docker_repository.sh```
add docker repository

```bash 2_install_docker_ce.sh```
install docker community edition

```bash 3_install_nvidia-docker-2.sh```
install nvidia-docker2

if you suffer from running the docker without super-user credentials, run the following script to make docker run without sudo: ```bash 4_run_docker_without_sudo.sh```


## OpenCV installation
This is simple pip installation of OpenCV: ```bash 5_opencv_installation.sh```

## (Docker) SSH setup:
This is necessary if you want to connect to your docker container from remote machine, i.e. ssh connection directly to your docker container: ```bash 6_ssh_setup.sh```. Do not forget to set your own password in the script (alisher --> your password @ line11)

## Downloading Google Drive files from CLI:
Most of the time I had difficulties to download Google Drive files from CLI. The following script helps you to download the Google drive file if you provide with the drive_file_id (this script calls `./helpers/get_google_drive_file.py` script): 
```bash 7_download_google_drive_file.sh drive_file_id destination_file_path````

Let me know if you find anything wrong with above scripts

