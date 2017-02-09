# Enable Ubuntu Universe and Multiverse.
sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

# For the latest version of git
add-apt-repository ppa:git-core/ppa

# Update
apt-get update

# Install HTTPS support for APT.
apt-get install -y --no-install-recommends apt-transport-https ca-certificates

# Install add-apt-repository
apt-get install -y --no-install-recommends  software-properties-common

# Upgrade all packages.
apt-get dist-upgrade -y --no-install-recommends

# Install some common components
apt-get install -y --no-install-recommends wget git curl zip less nano vim

# clean up
apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
