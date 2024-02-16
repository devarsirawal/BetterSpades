FROM gcc:11.4.0

WORKDIR /root/BetterSpades

COPY . .

RUN apt-get update && apt-get install -y \
	cmake \
    libglu1-mesa \
    libgl1-mesa-dev \
	libopenal1 \
	libopenal-dev \
	libglfw3-dev \
	libenet-dev \
	libglew-dev \
	libdeflate-dev \
	xterm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR build

RUN cmake .. && make

WORKDIR BetterSpades
