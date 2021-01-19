#!/user/bin/with-contenv bashio
cert=$(bashio::config 'certfile')
privatekey=$(bashio::config 'privatekey')
mkdir /trilium && cd /trilium
mkdir versions/ && cd versions/
mkdir 0.45.8/ && cd 0.45.8/

git clone https://github.com/zadam/trilium.git && cd trilium

npm set cafile $(bashio::config 'certfile')

npm install

export TRILIUM_DATA_DIR=/data/trilium/data/

mkdir /data && mkdir /data/trilium && mkdir /data/trilium/data

touch /data/trilium/data/config.ini

printf "[Network]\nport=8080\nhttps=true\ncertPath=$certfile\nkeyPath=$privatekey"

nohup node src/www &

