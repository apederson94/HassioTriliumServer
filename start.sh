mkdir /trilium && cd /trilium
mkdir versions/ && cd versions/
mkdir 0.45.8/ && cd 0.45.8/

git clone https://github.com/zadam/trilium.git && cd trilium

npm install

nohup node src/www