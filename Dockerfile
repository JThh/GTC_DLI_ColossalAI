FROM hpcaitech/cuda-conda:11.3

# install torch
RUN conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.3 -c pytorch

# install colossalai
RUN git clone https://github.com/hpcaitech/ColossalAI.git \
    && cd ./ColossalAI \
    && CUDA_EXT=1 pip install -v --no-cache-dir .

# install titans
RUN pip install --no-cache-dir titans

# install tensornvme
RUN conda install cmake && \
    git clone https://github.com/hpcaitech/TensorNVMe.git && \
    cd TensorNVMe && \
    pip install -r requirements.txt && \
    pip install -v --no-cache-dir .

# Update to latest jupyterlab and rebuild modules
RUN pip install --upgrade jupyterlab
RUN conda install -c "conda-forge/label/cf202003" nodejs
RUN jupyter lab build

# Create working directory to add repo.
WORKDIR /workshop

# Load contents into student working directory.
ADD . .

# Create working directory for students.
WORKDIR /workshop/tutorial

# Jupyter listens on 8888.
EXPOSE 8888

# Please see `entrypoint.sh` for details on how this content
# is launched.
ADD entrypoint.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
