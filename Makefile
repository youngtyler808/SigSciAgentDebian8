
build:
	docker build -t sigsci-agent-debian8:latest .

build-no-cache:
	docker build --no-cache -t sigsci-agent-debian8:latest .

run:
	docker run -v /var/run/sigsci:/var/run/sigsci -P -t sigsci-agent-debian8:latest
