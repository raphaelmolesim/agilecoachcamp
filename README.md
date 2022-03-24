On Ubuntu, install postgreSQL: 
```console 
sudo apt install postgresql postgresql-contrib libpq-dev 
``` 
Create a role for your user on postgreSQL: 
```console 
sudo -u postgres createuser --interactive 
Enter name of role to add: your_username (vagrant for a vagrant_box) 
Shall the new role be a superuser? (y/n) y 
``` 
On Ubuntu install nodejs: 
```console 
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash - 
sudo apt-get install -y nodejs 
``` 
Retore database dump: 
```console 
rake db:create 
pg_restore -U your_username -d agilecoachcamp_development -1 db/dec-11-2021.dump --no-privileges --no-owner 
``` 
Run the application binding to localhost: 
```console 
rails s -b 0.0.0.0 
```
