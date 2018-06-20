#! /bin/sh
# Download and extract instrument patch files
set -e

curl 'http://freepats.zenvoid.org/freepats-20060219.tar.xz' -o /tmp/freepats-20060219.tar.xz
tar xf /tmp/freepats-20060219.tar.xz

mv freepats/Drum_000 .
mv freepats/Tone_000 .
mv freepats/freepats.cfg .
mv freepats/COPYING ./LICENSE
mv freepats/README ./README_FREEPATS.txt

# Remove extra information about each sound. Important config info for each
# instrument is already present in freepats.cfg, so txt files are not needed.
rm Drum_000/*.txt
rm Tone_000/*.txt

rm -rf freepats
