# tells the terminal that we are using bash shell


# building the project
mvn install

# if the file doesn't exist, try to create folder
if [ ! -f ./.docker/mysql/scripts/setup-spring-security-demo-database-plaintext.sql ]

then
  cp ./sql-scripts/setup-spring-security-demo-database-plaintext.sql ./.docker/mysql/scripts/

echo --------------------------------SQL script was copied.--------------------------------

fi


echo --------------------------------Project was build.--------------------------------


docker-compose up -d --build

sleep 5

# OPEN BROWSER WITH THE url
/usr/bin/open -a "/Applications/Google Chrome.app" 'http://dev.security.com'
#/usr/bin/open -a "/Applications/Google Chrome.app" 'http://springmvcdocker.com'