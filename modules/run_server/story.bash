gitprep_user=$(config gitprep_user)
sudo su -l -c 'cd gitprep && ./gitprep' $gitprep_user || exit 1
echo done
echo check server availability by curl ...

curl -sL http://localhost:10020  | grep Gitprep --color




