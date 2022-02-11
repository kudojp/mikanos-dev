.PHONY: run
run:
	docker run --privileged -it --user vscode --mount type=bind,source=/tmp/.X11-unix,target=/tmp/.X11-unix --mount type=bind,source=${PWD}/$(DIR),target=/home/vscode/mikanOS ghcr.io/sarisia/mikanos /bin/bash
