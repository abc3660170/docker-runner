FROM gitlab/gitlab-runner:alpine-v16.9.0

RUN apk update
RUN apk upgrade

# 安装 Docker
RUN apk add --no-cache openrc docker 

# 启动 Docker 守护进程（如果需要运行 Docker 守护进程）
RUN rc-update add docker boot