git checkout fixres
git pull
cd RPiPlay
apt-get install cmake -y
apt-get install libavahi-compat-libdnssd-dev -y
apt-get install libplist-dev -y
apt-get install libssl-dev -y
mkdir build
cd build
cmake --DCMAKE_CXX_FLAGS="-O3" --DCMAKE_C_FLAGS="-O3" ..
make
make install
cd ..
cp rpiplay.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable rpiplay
systemctl start rpiplay
