yum install -y openssl-devel wget zip python27-pip python-pip yum-utils
yum groupinstall -y "Development Tools"
pip install --no-cache-dir virtualenv
rm -rf env
virtualenv env
. env/bin/activate
pip install --no-cache-dir -r requirements.txt



wget http://www.clamav.net/downloads/production/clamav-0.100.1.tar.gz
tar -xvzf clamav-0.100.1.tar.gz
cd clamav-0.100.1
mkdir -p bin
./configure
make
make install