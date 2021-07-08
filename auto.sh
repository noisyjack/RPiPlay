apt update
apt upgrade -y
apt dist-upgrade -y
cd ~/
apt install git -y
git clone https://github.com/scratchedguitar/RPiPlay.git
cd RPiPlay
apt-get install cmake -y
apt-get install libavahi-compat-libdnssd-dev -y
apt-get install libplist-dev -y
apt-get install libssl-dev -y
mkdir build
cd build
cmake ..
make -j
make install
cd ..
cp rpiplay.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable rpiplay
systemctl start rpiplay
