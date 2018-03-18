FROM base/archlinux:latest

LABEL maintainer="Gius. Camerlingo <gcamerli@gmail.com>"

# Add name to Docker image
ENV NAME=bitnode

# Update Arch
ENV TERM=xterm
RUN pacman -Syu --noconfirm \
	base-devel \
	git \
	wget \
	xterm \
	autogen \
	yasm \
	openssh \
	xorg-server \
	python \
	python2

# Set no password for docker user
RUN pacman --noconfirm -S sudo
RUN echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Create a new user
RUN useradd -ms /bin/bash docker
USER docker
ENV HOME=/home/docker
WORKDIR $HOME

# Install package-query and yaourt
RUN git clone https://aur.archlinux.org/package-query.git
WORKDIR $HOME/package-query/
RUN makepkg --noconfirm -si
WORKDIR $HOME
RUN git clone https://aur.archlinux.org/yaourt.git
WORKDIR $HOME/yaourt/
RUN makepkg --noconfirm -si
WORKDIR $HOME
RUN rm -rf package-query/ yaourt/

# Install from AUR
RUN yaourt --noconfirm -S zsh \
	vim	\
	nodejs \
	npm \
	bower \
	zeromq

# Install nvm
RUN sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

# Set zsh as default shell
RUN sudo chsh -s /usr/bin/zsh docker

# Set oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy post_install.sh
COPY ./post_install.sh .
