# Use a lightweight Node.js base image
FROM node:20-alpine
# Set a working directory
WORKDIR /app
# Install the Gemini CLI globally
RUN npm install -g @google/gemini-cli

# Copy your automation script & JSON into the container
COPY ./test-PCParchive-script.sh .
COPY ./PCParchive.json .
# Make the script executable
RUN chmod +x ./test-PCParchive-script.sh
# Set the entrypoint to your script
ENTRYPOINT ["./test-PCParchive-script.sh"]

