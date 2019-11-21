FROM gitpod/workspace-full-vnc

RUN wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz && \
    sudo tar -C /usr/local -xzf go*.linux-amd64.tar.gz && \
	rm go*.linux-amd64.tar.gz

RUN sudo apt-get -q update && \
    sudo apt-get install -yq xorg-dev libxcursor-dev libglfw3-dev \
		 libxrandr-dev libxinerama-dev libxi-dev libgl1-mesa-dev libgl1-mesa-glx \
		 libsdl2-dev libasound2-dev && \
    sudo rm -rf /var/lib/apt/lists/*

# RUN sudo nvidia-xconfig -a --use-display-device=none
