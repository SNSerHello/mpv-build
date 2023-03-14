# !/bin/bash

export C_INCLUDE_PATH=/usr/include/freetype2:/usr/include/fribidi:/usr/include/harfbuzz:/usr/include/drm:/usr/include/SDL2:/usr/include/lua5.1

./rebuild -j8 && \
./install && \
rsync -av --progress build_libs/ $CONDA_PREFIX/ 
