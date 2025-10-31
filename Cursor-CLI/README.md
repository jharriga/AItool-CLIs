# Example Cursor-Agent
Uses cursor-agent in scripting mode to perform thesee steps:  
1) Prompts cursor-agent to create the Dockerfile w/ubi-9 base image  
2) Issues 'podman build' and 'podman run' commands  
3) echo 'Done'  

# Usage
$ chmod 755 example-cursor-agent.sh  
$ ./example-cursor-agent.sh  

# Console output
Created a Dockerfile that:
1. Uses `registry.access.redhat.com/ubi9/ubi` as the base image  
2. Sets `CMD` to echo "Hello World" when the container runs  

When you run the container, it will output "Hello World" to the console.  
STEP 1/2: FROM registry.access.redhat.com/ubi9/ubi  
STEP 2/2: CMD ["echo", "Hello World"]  
COMMIT hello-world  
--> 80dd073b0c57  
Successfully tagged localhost/hello-world:latest  
  
Hello World  
Done  

