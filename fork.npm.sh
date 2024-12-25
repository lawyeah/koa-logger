#!/usr/bin/bash

pwd
mkdir -p npmpkg
rm -rf npmpkg/*
cp README.md npmpkg
cp index.js npmpkg
cp index.d.ts npmpkg
cp package.json package.save
npx clean-pkg-json
mv package.json npmpkg
mv package.save package.json
cd npmpkg
npm publish --access public