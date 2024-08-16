FROM alpine:3.18

RUN apk add --no-cache \
    curl \
    ca-certificates \
    bash \
    python3 \
    py3-pip

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

RUN curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 && \
    chmod +x /usr/local/bin/argocd

RUN pip install --no-cache-dir awscli

WORKDIR /app

CMD ["/bin/sh"]
