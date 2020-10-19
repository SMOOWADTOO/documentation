#!/usr/bin/env sh
DIR="$( cd "$( dirname "$0" )" && pwd )"

# abort on errors
set -e

cd $DIR/docs
# build
npm run build

# navigate into the build output directory

rm -rf $DIR/wad2-project-docs/docs
cp -R $DIR/docs/src/.vuepress/dist $DIR/wad2-project-docs
mv $DIR/wad2-project-docs/dist $DIR/wad2-project-docs/docs