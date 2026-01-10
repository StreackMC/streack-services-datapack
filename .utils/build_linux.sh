#!/bin/bash

# Streack Services Datapack 构建脚本
# Linux环境适用
echo "正在准备工作目录……"

echo "校验环境信息中……"
set -euo pipefail
if ! command -v zip >/dev/null 2>&1; then
  echo "请安装 zip 工具以继续。"
  echo "> sudo apt install zip"
  exit 1
fi
if ! command -v git >/dev/null 2>&1; then
  echo "请安装 git 工具以继续。"
  echo "> sudo apt install git"
  exit 1
fi
if [[ ! -d "./.git" ]]; then
  echo "没有发现Git仓库"
  echo "需要在项目根目录运行本脚本。"
  exit 1
fi
benv="Linux[$(uname -m)]_$(uname -r)@${1:-unknownOrigin}"
echo "当前构建环境：${benv}"
git_rev=$(git rev-parse --short HEAD)
git_branch=$(git rev-parse --short --abbrev-ref HEAD)
git_ver="${git_branch}@${git_rev}"
echo "当前git指针：${git_ver}"

echo "正在准备工作目录……"
rm -rf target
mkdir -p target
echo "build-tool=Streack-mcpack_BuildTool
build-env=${benv}
git-rev=${git_rev}
git-branch=${git_branch}
timestamp=$(date +%s)
time=$(date +%Y-%m-%d_%H:%M:%S_%Z)" >> ./target/build.properties

echo "开始打包……"
zip -r9 ./target/Streack_dp-${git_ver}.zip \
  ./data/* \
  ./license.txt \
  ./pack.mcmeta \
  ./pack.png \
  "./README ‖ 读我.txt" \
  ./Reference_License.txt
zip -j9 ./target/Streack_dp-${git_ver}.zip ./target/build.properties

echo "打包完成：./target/Streack_dp-${git_ver}.zip"
