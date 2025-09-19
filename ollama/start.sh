#!/bin/bash

# Start the ollama service in the background
echo "Starting ollama service..."
ollama serve &

# Wait for the service to initialize
echo "Waiting for ollama service to initialize..."
sleep 10

# Run the Llama 2 model
MODEL=$(cat .env | grep MODEL | cut -d '=' -f2)
echo "installing the $MODEL model..."
#ollama run granite-code:3b
DOWNLOAD=$(ollama list | grep $MODEL | cat)
echo $DOWNLOAD
if [ -z "$DOWNLOAD" ]; then
echo "$MODEL does not exist , pulling ....."
ollama run $MODEL 2>&1 | cat
fi
echo "OUTPUT: $?"

# Keep the container running
tail -f /dev/null