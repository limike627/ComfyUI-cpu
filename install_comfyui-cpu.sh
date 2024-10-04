#!/bin/bash
git clone https://github.com/ArdeniusAI/ComfyUI-cpu.git
cd ComfyUI-cpu || exit
python -m venv venv
source venv/bin/activate
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip3 install -r requirements.txt
cd custom_nodes || exit
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
python main.py --cpu --cpu-vae
