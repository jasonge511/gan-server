#!/bin/bash
export PATH=$PATH:/home/jason/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/jason/.local/bin
lightweight_gan --load-from 91 --generate --num-image-tiles 1 --generate-types ema
exit 1