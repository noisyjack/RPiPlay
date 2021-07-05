apt update
apt upgrade -y
apt dist-upgrade -y
cd ~/
apt install git libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-plugins-bad -y
git clone https://github.com/FD-/RPiPlay.git
cd RPiPlay
apt-get install cmake -y
apt-get install libavahi-compat-libdnssd-dev -y
apt-get install libplist-dev -y
apt-get install libssl-dev -y
mkdir build
cd build
cmake ..
make -j
cd ..
cp rpiplay.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable rpiplay
systemctl start rpiplay
