# GTC-DLI Tutorial for ColossalAI

For detailed instructions and self-contained notebook to run the ColossalAI examples, refer to the `tutorial` folder.

## Introduction

Welcome to the [Colossal-AI](https://github.com/hpcaitech/ColossalAI) tutorial, which has been accepted as official tutorials by top conference [SC](https://sc22.supercomputing.org/), [AAAI](https://aaai.org/Conferences/AAAI-23/), [PPoPP](https://ppopp23.sigplan.org/), etc.


[Colossal-AI](https://github.com/hpcaitech/ColossalAI), a unified deep learning system for the big model era, integrates
many advanced technologies such as multi-dimensional tensor parallelism, sequence parallelism, heterogeneous memory management,
large-scale optimization, adaptive task scheduling, etc. By using Colossal-AI, we could help users to efficiently and
quickly deploy large AI model training and inference, reducing large AI model training budgets and scaling down the labor cost of learning and deployment.


### 🚀 Quick Links

[**Colossal-AI**](https://github.com/hpcaitech/ColossalAI) |
[**Paper**](https://arxiv.org/abs/2110.14883) |
[**Documentation**](https://www.colossalai.org/) |
[**Forum**](https://github.com/hpcaitech/ColossalAI/discussions) |
[**Slack**](https://join.slack.com/t/colossalaiworkspace/shared_invite/zt-z7b26eeb-CBp7jouvu~r0~lcFzX832w)


## Docker 
Use `Dockerfile` to build a docker image with `docker build -t colossalai_tutorial .`

Run a container from this image with `docker run -p 8888:8888 --runtime=nvidia colossalai_tutorial`

Once the container is running, visit the content in your browser at `localhost:8888`.

## Discussion

Discussion about the [Colossal-AI](https://github.com/hpcaitech/ColossalAI) project is always welcomed! We would love to exchange ideas with the community to better help this project grow.
If you think there is a need to discuss anything, you may jump to our [Slack](https://join.slack.com/t/colossalaiworkspace/shared_invite/zt-z7b26eeb-CBp7jouvu~r0~lcFzX832w).

If you encounter any problem while running these tutorials, you may want to raise an [issue](https://github.com/hpcaitech/ColossalAI/issues/new/choose) in this repository.
