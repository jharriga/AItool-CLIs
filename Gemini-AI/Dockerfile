# Use a lightweight Node.js base image
FROM node:20-alpine
# Set a working directory
WORKDIR /app
# Install the Gemini CLI globally
RUN npm install -g @google/gemini-cli
# Copy your automation script into the container
COPY ./test-gemini-script.sh .
# Make the script executable
RUN chmod +x ./test-gemini-script.sh
# Set the entrypoint to your script
ENTRYPOINT ["./test-gemini-script.sh"]
