#!/bin/bash
echo "LANG=$LANGUAGE VOICE=$VOICE PITCH=$PITCH RATE=$RATE" >> /tmp/tts-debug.log%$
# General settings
username='t'
voicedir="/home/$username/sync/dictionaries3/tts"
pipercmd="/home/$username/.local/share/uv/tools/piper-tts/bin/piper"

# Arguments (no $DATA)
LANGUAGE=$1
VOICE=$2
PITCH=$3
PITCH_RANGE=$4
RATE=$5

# Read the whole text from stdin
input=$(cat)

# Find the model and the .json file to get the sample rate
model="${voicedir}/${VOICE}.onnx"
json="${model}.json"
sample_rate=$(grep sample_rate "$json" | sed 's/.*://g' | tr -d ' ' | tr -d ',')

# Synthesize – use printf instead of echo to avoid backslash interpretation
printf '%s\n' "$input" | "$pipercmd" --model "$model" --output-raw | pw-play --raw --rate="$sample_rate" --channels=1 --format=s16 -
