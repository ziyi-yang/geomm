# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#

mkdir -p vectors
curl -Lo vectors/wiki.en.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.en.vec
curl -Lo vectors/wiki.vi.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.vi.vec
curl -Lo vectors/wiki.th.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.th.vec
curl -Lo vectors/wiki.ti.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.ti.vec
curl -Lo vectors/wiki.ms.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.ms.vec
curl -Lo vectors/wiki.si.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.si.vec
curl -Lo vectors/wiki.bs.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.bs.vec
curl -Lo vectors/wiki.af.vec https://dl.fbaipublicfiles.com/fasttext/vectors-wiki/wiki.af.vec


aws_path='https://dl.fbaipublicfiles.com/arrival'

mkdir crosslingual

## Downloading en-{} or {}-en dictionaries
lgs="vi th ti ms af bs si"
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
