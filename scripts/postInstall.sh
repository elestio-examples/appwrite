#set env vars
set -o allexport; source .env; set +o allexport;


echo "Waiting...";
sleep 60s;

target=$(docker-compose port traefik 80)

  curl http://$target/v1/account \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36' \
  -H 'content-type: application/json' \
  -H 'x-appwrite-locale: en' \
  -H 'accept: */*' \
  -H 'accept-language: fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7' \
  --data-raw '{"userId":"unique()","email":"'${ADMIN_EMAIL}'","password":"'${ADMIN_PASSWORD}'","name":"'${ADMIN_EMAIL}'"}' \
  --compressed