# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
lgs="ar bg bn ca cs da de el fa fi he hi hr hu id it ko lt lv mk nl no pt ro sq sv ta tr uk en"

mkdir -p vectors
for lg in ${lgs}
do
  curl -Lo vectors/wiki.$lg.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.$lg.vec
done

aws_path='https://dl.fbaipublicfiles.com/arrival'

mkdir crosslingual

## Downloading en-{} or {}-en dictionaries
mkdir -p crosslingual/dictionaries/
for lg in ${lgs}
do
  for suffix in .txt .0-5000.txt .5000-6500.txt
  do
    fname=en-$lg$suffix
    curl -Lo crosslingual/dictionaries/$fname $aws_path/dictionaries/$fname
    fname=$lg-en$suffix
    curl -Lo crosslingual/dictionaries/$fname $aws_path/dictionaries/$fname
  done
done
