@echo off
echo -----Downloading last version
git pull
echo ============================================
echo -----IPs for server
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
echo Local IP: %NetworkIP%:25566
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo Public IP: %PublicIP%:25566
echo ============================================
echo -----Server will open now, pls at server shutdown close it first and then this window
echo -----El servidor se va abrir a continuaciOn, porfa al ir a chapar cierra esa ventana antes y luego ya esta
echo Pulsa cualquier tecla para continuar . . .
echo Press any key to continue . . .
pause > nul
java -Xmx1024M -Xms1024M -jar server.jar
git add .
git commit -m "World decentralization at %date%"
git push
echo ============================================
echo -----FINISH
echo -----Reports bugs at github.com/MikeMakes
echo Pulsa cualquier tecla para continuar . . .
echo Press any key to continue . . .
pause > nul
