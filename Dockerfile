FROM fluxcd/flux:1.14.2

# Install Helm
RUN wget https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz && \
    tar zxf helm-v2.14.3-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin && \
    rm -rf helm-v2.14.3-linux-amd64.tar.gz linux-amd64

# Install dhall-json and dhall-yaml
RUN wget https://github.com/dhall-lang/dhall-haskell/releases/download/1.26.0/dhall-json-1.4.1-x86_64-linux.tar.bz2 && \
    tar jxf dhall-json-1.4.1-x86_64-linux.tar.bz2 && \
    rm dhall-json-1.4.1-x86_64-linux.tar.bz2 && \
    mv bin/* /usr/local/bin
