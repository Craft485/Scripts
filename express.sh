serverURL="https://raw.githubusercontent.com/Craft485/Scripts/master/files/express/express_webserver.js"
serverConfigURL="https://raw.githubusercontent.com/Craft485/Scripts/master/files/express/webserver_config.json"

echo "Creating new express project in"

pwd

node_base

npm i express

npm i --save-dev @types/express

mkdir src

webserver=`curl $serverURL`

webserver_config=`curl $serverConfigURL`

cd src

echo "$webserver" > server.js

echo "$webserver_config" > config.json

cd ..