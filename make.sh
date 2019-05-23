#!/bin/bash -ex
source /opt/emscripten/emsdk_env.sh
em++ main.cpp -std=c++11 -s WASM=1 -s USE_SDL=2 -O3 -o index.js
exec emrun --no_browser --hostname 0.0.0.0 --port 8080 index.html
