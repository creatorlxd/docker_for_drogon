apt-get install -yqq git
apt-get install -yqq gcc
apt-get install -yqq g++
apt-get install -yqq cmake
apt-get install -yqq libjsoncpp-dev
apt-get install -yqq uuid-dev
apt-get install -yqq openssl
apt-get install -yqq libssl-dev
apt-get install -yqq zlib1g-dev
apt-get install -yqq libmariadbclient-dev
apt-get install -yqq mariadb-client
apt-get install -yqq mariadb-server

cd ~
git clone https://github.com/an-tao/drogon
cd drogon
git submodule update --init
mkdir build
cd build
cmake ..
make && make install
