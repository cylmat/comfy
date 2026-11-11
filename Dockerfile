FROM runpod/worker-comfyui:5.11.0-base
# @https://github.com/runpod-workers/worker-comfyui/blob/main/docs/customization.md

RUN comfy-node-install comfyui-kjnodes comfyui-ic-light

# RUN comfy model download --url https://huggingface.co/KamCastle/jugg/resolve/main/juggernaut_reborn.safetensors --relative-path models/checkpoints --filename juggernaut_reborn.safetensors

RUN git clone https://github.com/nakagawadev/comfyui_nakagawa /comfyui/custom_nodes

COPY input/ /comfyui/input/
