echo "Creating node project in"

pwd

git init

echo node_modules >> .gitignore
echo *.test.* >> .gitignore
echo config.json >> .gitignore

npm init -y
npm i --save-dev @types/node

# Newline should automatically be there
echo \# New Project > README.md

ls -lA