Dockerfile which creates runtime env for Gemini-CLI and executes 'test-PCParchive-script.sh'  
test-PCParchive-script.sh: Bash script containing Gemini-CLI commands    
PCParchive.json results file, produced with 'pcp2json' export utility  

Completes these Tasks:  
1) Produce succinct summary of Performance Co-Pilot
2) Creates a graph of select metrics in PCP-Archive.json file
3) Creates a Grafana Dashboard which displays select metrics

# USAGE
sut# podman build -t gemini-pcp-archive-test -f Dockerfile  
Successfully tagged localhost/gemini-pcp-archive-test:latest  

sut# podman run --rm -e GEMINI_API_KEY="<API-KEY>" gemini-pcp-archive-test  
