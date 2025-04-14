#FROM --platform=$BUILDPLATFORM gitpod/openvscode-server:latest
FROM gitpod/openvscode-server:1.98.2

LABEL maintainer="@k33g_org"

ARG NODE_MAJOR=${NODE_MAJOR}
ARG USER_NAME=${USER_NAME}

USER root
# ------------------------------------
# Install Node
# ------------------------------------
RUN <<EOF
apt-get update && apt-get install -y ca-certificates curl gnupg
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update && apt-get install nodejs -y
EOF
    
USER ${USER_NAME}



