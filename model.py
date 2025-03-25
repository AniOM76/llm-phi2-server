from llama_cpp import Llama

LLM = Llama(
    model_path="models/phi-2.Q4_K_M.gguf",
    n_ctx=1024,
    n_threads=4,
    n_gpu_layers=0  # Set to 0 if using CPU only
)

def generate(prompt: str) -> str:
    output = LLM(prompt, max_tokens=150, stop=["</s>"])
    return output["choices"][0]["text"].strip()
