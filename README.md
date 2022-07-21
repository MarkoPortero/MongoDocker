**Steps to use**<br>
Download files<br>
Check mongo-seed data.<br>
Close any locally running instances of mongodb - can be done on windows with "net stop MongoDB"<br>


add host file entries for mongo1-3:<br>
127.0.0.1 mongo1<br>
127.0.0.1 mongo2<br>
127.0.0.1 mongo3<br>

To run:<br>
run setupdb.sh<br>
    -Note, when this is running, it will continue to run indefinitely until stopped.
<br>

To stop:<br>
Open command/bash/shell to the folder holding the docker files<br>
"docker compose down"<br>
    -Note, rerunning the setupdb.sh will recreate the database from scratch using the mongo dump folder, resetting the local database
<br>

Add connection string to relevant places, i.e. properties/runsettings<br>
Default connection string will look like:<br>
mongodb://mongo1:27017,mongo2:27018,mongo3:27019/<DBNAME>?replicaSet=dbrs&readPreference=primary&appname=MongoDB%20Compass&ssl=false
