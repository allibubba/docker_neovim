FROM debian:bullseye AS local

RUN apt-get update \
  && apt-get install -y \
  git \
  curl \
  build-essential \
  bison \
  openssl \
  libreadline6-dev \
  zlib1g \
  zlib1g-dev \
  libssl-dev \
  libyaml-dev \
  libxml2-dev \
  autoconf \
  libc6-dev \
  ncurses-dev \
  automake \
  libtool \
  ruby-dev

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN node -v
RUN apt-get install -y ruby
RUN gem install neovim bundler solargraph
RUN apt-get install -y neovim
RUN npm install -g neovim
COPY config /root/.config
ENV MYVIMRC: /root/.config/nvim/init.vim
WORKDIR /projects

CMD ["nvim"]
