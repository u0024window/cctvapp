#!/bin/bash

# 定义本地文件夹路径
LOCAL_FOLDER1="./dist"
LOCAL_FOLDER2="./package-lock.json"
LOCAL_FOLDER3="./package.json"
# 定义远程服务器信息
REMOTE_USER="root"
REMOTE_IP="144.34.182.159"
REMOTE_PATH="app/shipmentBackend"
REMOTE_PORT="26964"


# 上传第一个文件夹
rsync -avz "$LOCAL_FOLDER1" -e "ssh -p ${REMOTE_PORT}" "${REMOTE_USER}@${REMOTE_IP}:${REMOTE_PATH}"
# rsync -avz "$LOCAL_FOLDER3" -e "ssh -p ${REMOTE_PORT}" "${REMOTE_USER}@${REMOTE_IP}:${REMOTE_PATH}"
# rsync -avz "$LOCAL_FOLDER2" -e "ssh -p ${REMOTE_PORT}" "${REMOTE_USER}@${REMOTE_IP}:${REMOTE_PATH}"

# npm run start:dev
# npm run build

#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa
#sh uploadbuild.sh
