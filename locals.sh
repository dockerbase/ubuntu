# Enable Ubuntu Universe and Multiverse.
sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

# Set the locale
apt-get clean && apt-get update && apt-get install -y locales
locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales