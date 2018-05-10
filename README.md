## SigSciAgentDebian8

SigSci Agent on Debian 8

The SigSci agent will be configured to use the /var/run/sigsci/agent.sock file, which is shared across docker containers.

example build command:

`docker build --no-cache -t sigsci-agent-debian8:latest .`

example docker run command:

`docker run -v /var/run/sigsci:/var/run/sigsci -P -t sigsci-agent-debian8:latest`
