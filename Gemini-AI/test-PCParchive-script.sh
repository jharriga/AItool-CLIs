#!/bin/sh
# Exit if any command fails
set -e
# Load the API key from the environment variable.
# You can also pass it directly to the gemini command.
export GEMINI_API_KEY=$GEMINI_API_KEY
# Check if the API key is set
if [ -z "$GEMINI_API_KEY" ]; then
  echo "Error: GEMINI_API_KEY environment variable not set."
  exit 1
fi
echo "Running automated task with Gemini..."
# --- Example automation tasks ---
# Task 1: Generate a brief summary of a topic
echo "Generating a summary..."
gemini "Summarize the key features of the Performance CoPilot in 50 words or less."

# Task 2: Generate a graph from PCP-Archive in JSON format
echo "Analyzing PCP Archive with Gemini..."
# --- NOTE: PCParchive.json was previously created using pcp2json
gemini -p "Create a graph using the openmetrics.workload.throughput and openmetrics.workload.latency values from the attached file. @./PCParchive.json"

# Task 3: Create a Grafana Dashboard
gemini -p "Create a Grafana Dashboard with two panels from the attached file @./PCParchive.json. In one panel show the openmetrics.workload.throughput and openmetrics.workload.latency metrics. In the other panel show the openmetrics.RFchassis, denki.rapl and nvidia.power values"
