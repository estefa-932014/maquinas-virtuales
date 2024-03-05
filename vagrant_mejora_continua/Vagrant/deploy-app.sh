cd /practica/ejercicio2/ 
docker-compose up -d --build
pwd
ls
echo "configurando ngrok"
ngrok config add-authtoken 2WuFTtObR3Q4WhNEKEbzgZWoLAa_5D1v8CvBm44CNVmQFivzn
ngrok http http://localhost:8080