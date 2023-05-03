#set env vars
#set -o allexport; source .env; set +o allexport;

echo "Running migration...";

docker-compose exec -T appwrite migrate
