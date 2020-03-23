@echo off
git clone https://github.com/MikeMakes/gitcraft.git
cd gitcraft
set /p email="Your github email here: "
git config user.email "%email%"
set /p nick="Your name here (minecraft name recommended):"
git config user.name "%nick%"
git pull
echo MY JOB IS DONE
