#!/bin/bash
mkdir -p models
if [ ! -f models/phi-2.Q4_K_M.gguf ]; then
  echo "Downloading Phi-2 model..."
  curl -L -o models/phi-2.Q4_K_M.gguf https://huggingface.co/TheBloke/phi-2-GGUF/resolve/main/phi-2.Q4_K_M.gguf
fi
uvicorn app.main:app --host 0.0.0.0 --port 10000
