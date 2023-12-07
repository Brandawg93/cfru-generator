#! /bin/bash

if [ ! -e /Rom/BPRE0.gba ]
then
    echo "BPRE0.gba not found. Did you forget to rename your ROM?"
    exit 1
fi

sudo apt update
sudo apt install -y build-essential

git clone https://github.com/ipatix/wav2agb
cd wav2agb
make
export PATH="$PATH:$(pwd)"
cd ..

git clone https://github.com/snallapa/mid2agb-modified
cd mid2agb-modified
make
export PATH="$PATH:$(pwd)"
cd ..

git clone https://github.com/Skeli789/Complete-Fire-Red-Upgrade
cd Complete-Fire-Red-Upgrade
cp /Rom/BPRE0.gba .
sed -i -e 's/^OFFSET_TO_PUT.*/OFFSET_TO_PUT = '$CFRU_OFFSET'/' scripts/make.py
python3 scripts/make.py
mkdir -p /Rom/build

cp offsets.ini /Rom/build/offsets.ini
cp test.gba /Rom/build/test.gba