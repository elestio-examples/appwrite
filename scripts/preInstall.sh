#set env vars
#set -o allexport; source .env; set +o allexport;

git clone https://github.com/appwrite/appwrite.git temp
mv ./temp/app ./app
mv ./temp/src ./src
rm -rf temp