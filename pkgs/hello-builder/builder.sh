tar xvfz $src
cd hello-*
./configure --prefix=$out
make
make install

ffmpeg -version
