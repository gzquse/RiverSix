#!/bin/bash
#  salloc -q interactive -C gpu -t 4:00:00 -A nintern -N 1 
# podman-hpc run -it gzquse/ubu22-qiskit1.0:p2j bash
# export IMG=gzquse/cudaquanmpi-qiskit1:p2.1 
export PODMANHPC_ADDITIONAL_STORES=/dvs_ro/cfs/cdirs/nintern/gzquse/podman_common/
IMG=gzquse/nbdev:p2

JNB_PORT=' '
BASE_DIR=riversix  # here git has home
WORK_DIR=$BASE_DIR
CFSH=/pscratch/sd/g/gzquse
DATA_VAULT=${CFSH}/DataVault2025
DATA_DIR=/data_Mar

podman-hpc run --privileged -it \
   gzquse/nbdev:p2 python3 -m ipykernel install --prefix ${HOME}/.local --name riversix --display-name "riversix"