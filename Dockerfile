# 一个包括了 centos7 node18 和 yarn1.22.21 的镜像

FROM centos:7

# 安装node
RUN curl -sL https://rpm.nodesource.com/setup_18.x | bash - &&
  yum install -y nodejs

# 安装yarn
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo &&
  yum install -y yarn-1.22.21

# 安装git
RUN yum install -y git

# 安装python3
RUN yum install -y python3

# 安装python3的pip
RUN yum install -y python3-pip

# 安装 node-gyp 环境
RUN npm install -g node-gyp
