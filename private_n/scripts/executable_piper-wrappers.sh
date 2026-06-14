#!/bin/bash

# General settings
username='t'
voicedir="/home/$username/sync/dictionaries3/tts"
pipercmd="/home/$username/.local/share/uv/tools/piper-tts/bin/piper"

# Get the input parameters that come from speech-dispatcher
# No $DATA variable here; text will come from stdin
LANGUAGE=$1
VOICE=$2
PITCH=$3
PITCH_RANGE=$4
RATE=$5

# Read the entire text from standard input into a variable
DATA=$(cat)

# Find the model and the .json file, use the .json file to get the correct sample rate for the voice
model="${voicedir}/${VOICE}.onnx"
json="${model}.json"
sample_rate=$(grep sample_rate "$json" | sed 's/.*://g' | tr -d ' ' | tr -d ',')

# Pipe the text to piper and play
echo "$DATA" | $pipercmd --model "$model" --output-raw --sentence_silence 0 | pw-play --raw --rate="$sample_rate" --channels=1 --format=s16 -
