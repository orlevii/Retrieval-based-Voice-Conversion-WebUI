set -e
apt update && apt install -y vim tar gzip unzip curl
export AWS_CLI_VERSION="2.2.10"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install
