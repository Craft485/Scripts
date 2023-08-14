echo "Creating new express project in"

pwd

node_base

mkdir src

webserver=`cat ./files/express.js`

cd src

echo "$webserver" > server.js

cd ..