# LangchainJS and Ollama

## Test the Ollama API with curl

```bash
curl $OLLAMA_BASE_URL/api/generate -d '{
  "model": "qwen2.5:0.5b",
  "prompt": "Why is the sky blue?",
  "stream": false
}'
```

## Run the example

```bash
npm install
npm run start
```
