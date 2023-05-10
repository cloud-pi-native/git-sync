FROM debian:11-slim
RUN apt-get update -y && apt install gpg wget git -y \
    && wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null \
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com focal main" | tee /etc/apt/sources.list.d/hashicorp.list \
    && apt-get update -y && apt-get install vault -y
