# docker network create toaster-network
# docker run -d --rm --net toaster-network --name frontend-pr-1 -p 30001:3000 -v $PWD:/var/www mhart/alpine-node node /var/www/index-1.js
# docker run -d --rm --net toaster-network --name frontend-pr-2 -p 30002:3000 -v $PWD:/var/www mhart/alpine-node node /var/www/index-2.js
echo "Open http://localhost:8000/pr/1, then http://localhost:8000/pr/2"
docker run --rm --net toaster-network -p 8000:80 -v $PWD/nginx:/etc/nginx/conf.d -v $PWD/www-data:/var/www nginx
#docker network rm toaster-network
