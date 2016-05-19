git --version || exit 1

gitprep_user=$(config gitprep_user)
sudo useradd -m --shell `which bash` $gitprep_user
echo gitprep user exists: `id -un $gitprep_user`

if sudo test -f /home/$gitprep_user/gitprep-latest.tar.gz; then

  :

else

  sudo su -l -c 'curl -kL https://github.com/yuki-kimoto/gitprep/archive/latest.tar.gz \
  -o gitprep-latest.tar.gz' $gitprep_user

  sudo ls /home/$gitprep_user/gitprep-latest.tar.gz || exit 1

fi

if sudo test -d /home/$gitprep_user/gitprep; then

  :

else

  sudo su -l -c 'tar xf gitprep-latest.tar.gz && mv gitprep-latest gitprep' $gitprep_user

fi

sudo test -d /home/$gitprep_user/gitprep || exit 1

sudo ls -d /home/$gitprep_user/gitprep 

sudo su -l -c 'cd gitprep && ./setup_module' $gitprep_user || exit 1

sudo su -l -c 'cd gitprep && prove t  ' $gitprep_user || exit 1

sudo su -l -c 'cd gitprep && ./setup_database' $gitprep_user || exit 1




