# Secure-ssh.sh
# Author Tetoronie
# Creates a new ssh user called $1
# Adds a public key to that users authorized file
# Removes roots ability to ssh in

echo "testing 123"

useradd $1
echo User $1 added

mkdir -p /home/$1/.ssh/authorized_keys

cp /home/chris/sys265-scripts/linux/public-keys/sys265.pub /home/$1/.ssh/authorized_keys/

chmod 700 /home/$1/.ssh/

chmod 600 /home/$1/.ssh/authorized_keys

chown -R $1:$1 /home/$1/.ssh
