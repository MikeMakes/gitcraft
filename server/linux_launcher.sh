echo -----Downloading last version
git pull
echo ============================================
echo -----IPs for server
local=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
echo Local IP: $local
public="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo Public IP: $public:25565
echo 25565 may not be your port, it is the default tho
echo ============================================
echo -----Server will open now, pls at server shutdown close it first and then this window
echo -----El servidor se va abrir a continuaciOn, porfa al ir a chapar cierra esa ventana antes y luego esta
echo Pulsa enter para lanzar el servidor . . .
echo Press enter to launch the server . . .
read -n 1
java -Xmx1024M -Xms1024M -jar server.jar
git add .
git commit -m "World decentralization at $(date)"
git push
echo ============================================
echo -----FINISH
echo -----Reports bugs at github.com/MikeMakes
echo Pulsa enter para terminar . . .
echo Press enter to end . . .
read -n 1

