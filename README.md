# Phi-2 LLM Server with llama.cpp

This is a FastAPI wrapper for the quantized Phi-2 model using llama.cpp.

## Endpoint

- `POST /generate`
  Example request:
  ```
  {
    "prompt": "Write a polite email to reschedule a meeting."
  }
  ```

## Deployment on Render

1. Deploy this repo as a Web Service
2. Use a 2 GB RAM instance for cost-effective inference
3. Confirm the model downloads and starts correctly

Model source:
https://huggingface.co/TheBloke/phi-2-GGUF
