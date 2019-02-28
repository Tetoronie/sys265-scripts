# Secure-ssh.sh
# Author Tetoronie
# Creates a new ssh user called $1
# Adds a public key to that users authorized file


#adds user and creates .ssh directory
useradd $1
echo User $1 added

#Creates directory for public key
mkdir -p /home/$1/.ssh/

#copies public key from existing github repo
git clone http://github.com/tetoronie/sys265-scripts.git /home/$1/scripts

#Writes public key into authorized key file
cat /home/$1/scripts/linux/public-keys/sys265.pub >> /home/$1/.ssh/authorized_keys

#modify permissions for key
chmod 700 /home/$1/.ssh/

chmod 600 /home/$1/.ssh/authorized_keys

chown -R $1:$1 /home/$1/.ssh
