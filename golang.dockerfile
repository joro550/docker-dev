FROM alpine:edge

RUN apk add git lazygit neovim ripgrep alpine-sdk --update
RUN git clone https://github.com/joro550/lazyvim ~/.config/nvim

RUN wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
RUN cd /root
ENV PATH="${PATH}:/usr/local/go/bin"


ENTRYPOINT 'sh'

