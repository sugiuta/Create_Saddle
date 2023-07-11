#!/bin/bash

# パッケージ名を指定
name="Create_Saddle"
version="1.0.0"

# ディレクトリの作成
mkdir -p ./package

# package フォルダ内にコピー
cp -r ./recipes manifest.json pack_icon.png ./package

# ディレクトリの移動
cd ./package

# mcpackの作成
zip -r ${name}_${version}.zip ./*

# 名前の変更
mv ${name}_${version}.zip ${name}_${version}.mcpack

# package フォルダの削除
rm -rf ./recipes manifest.json pack_icon.png

echo
echo "Make package successful!"
echo
