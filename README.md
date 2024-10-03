<div align="left">

# ComfyUI-cpu
**ComfyUI-cpu is a trimmed down version of ComfyUI that only uses the cpu. I needed to run comfyui on cpu only device so I created this fork of ComfyUI optimized for cpu usage. The most powerful and modular diffusion model GUI and backend.**
## Fast installation 

```git clone https://github.com/ArdeniusAI/ComfyUI-cpu.git```

```cd ComfyUI-cpu```

```./install_comfyui-cpu.sh```

### once installed then you can cd into comfyui-cpu and run the following to start:
```./start_comfyui-cpu.sh```

## Manual installation 

### 1. Git clone this repo
```git clone https://github.com/ArdeniusAI/ComfyUI-cpu.git```

### 2. cd into ComfyUI folder 
```cd ComfyUI```

### 3. download and copy your models and vae into 

Recommended for SD1.5 LCM since cpus are very slow compared to gpus. 

Put your SD checkpoints (the huge ckpt/safetensors files) in: models/checkpoints

Put your VAE in: models/vae

### 4. create a virtual environment
```python -m venv venv```

### 5. install torch 
```pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu```

And install it again with the command above.

### 6. install Dependencies

Install the dependencies by opening your terminal inside the ComfyUI folder and:

```pip install -r requirements.txt```

After this you should have everything installed and can proceed to running ComfyUI.

### 7. in ComfyUI folder then Run
```python main.py --cpu --cpu-vae```

### 8. open it in your browser
```http://localhost:8188```
</div>

## Shortcuts

| Keybind                            | Explanation                                                                                                        |
|------------------------------------|--------------------------------------------------------------------------------------------------------------------|
| Ctrl + Enter                       | Queue up current graph for generation                                                                              |
| Ctrl + Shift + Enter               | Queue up current graph as first for generation                                                                     |
| Ctrl + Alt + Enter                 | Cancel current generation                                                                                          |
| Ctrl + Z/Ctrl + Y                  | Undo/Redo                                                                                                          |
| Ctrl + S                           | Save workflow                                                                                                      |
| Ctrl + O                           | Load workflow                                                                                                      |
| Ctrl + A                           | Select all nodes                                                                                                   |
| Alt + C                            | Collapse/uncollapse selected nodes                                                                                 |
| Ctrl + M                           | Mute/unmute selected nodes                                                                                         |
| Ctrl + B                           | Bypass selected nodes (acts like the node was removed from the graph and the wires reconnected through)            |
| Delete/Backspace                   | Delete selected nodes                                                                                              |
| Ctrl + Backspace                   | Delete the current graph                                                                                           |
| Space                              | Move the canvas around when held and moving the cursor                                                             |
| Ctrl/Shift + Click                 | Add clicked node to selection                                                                                      |
| Ctrl + C/Ctrl + V                  | Copy and paste selected nodes (without maintaining connections to outputs of unselected nodes)                     |
| Ctrl + C/Ctrl + Shift + V          | Copy and paste selected nodes (maintaining connections from outputs of unselected nodes to inputs of pasted nodes) |
| Shift + Drag                       | Move multiple selected nodes at the same time                                                                      |
| Ctrl + D                           | Load default graph                                                                                                 |
| Alt + `+`                          | Canvas Zoom in                                                                                                     |
| Alt + `-`                          | Canvas Zoom out                                                                                                    |
| Ctrl + Shift + LMB + Vertical drag | Canvas Zoom in/out                                                                                                 |
| P                                  | Pin/Unpin selected nodes                                                                                           |
| Ctrl + G                           | Group selected nodes                                                                                               |
| Q                                  | Toggle visibility of the queue                                                                                     |
| H                                  | Toggle visibility of history                                                                                       |
| R                                  | Refresh graph                                                                                                      |
| Double-Click LMB                   | Open node quick search palette                                                                                     |
| Shift + Drag                       | Move multiple wires at once                                                                                        |
| Ctrl + Alt + LMB                   | Disconnect all wires from clicked slot                                                                             |

Ctrl can also be replaced with Cmd instead for macOS users




