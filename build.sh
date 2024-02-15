bold=$(tput bold)
normal=$(tput sgr0)
NONE='\033[00m'
YELLOW='\033[01;33m'
GREEN='\033[01;32m'
echo -e "


${bold} ${NONE}Hello from RMM. Im ${GREEN}Bizhan Laripour ${NONE}who had written this shell .



"




if test -d ./RMM_CONFIG_REPO; then
  echo  -e "${normal} ${YELLOW} RMM_CONFIG_REPO exists. we will remove it and clone new one from github ${NONE}"
  sudo -S  sudo rm -rf ./RMM_CONFIG_REPO

fi

if test -d ./RMM_DISCOVERY; then
  echo -e  "${normal} ${YELLOW} RMM_DISCOVERY exists. we will remove it and clone new one from github ${NONE}"
  sudo -S  sudo rm -rf ./RMM_DISCOVERY
fi

if test -d ./RMM_CONFIG_SERVER; then
  echo -e "${normal} ${YELLOW} RMM_CONFIG_SERVER exists. we will remove it and clone new one from github ${NONE}"
  sudo -S  sudo rm -rf ./RMM_CONFIG_SERVER
fi

if test -d ./RMM_WORKER; then
  echo -e "${normal} ${YELLOW} RMM_WORKER exists. we will remove it and clone new one from github ${NONE}"
  sudo -S  sudo rm -rf ./RMM_WORKER
fi

if test -d ./RMM_AGENT; then
  echo -e "${normal} ${YELLOW} RMM_AGENT exists. we will remove it and clone new one from github ${NONE}"
  sudo -S  sudo rm -rf ./RMM_AGENT
fi
git clone https://github.com/bizhan-laripour/RMM_CONFIG_REPO.git
git clone https://github.com/bizhan-laripour/RMM_DISCOVERY.git
git clone https://github.com/bizhan-laripour/RMM_CONFIG_SERVER.git
git clone https://github.com/bizhan-laripour/RMM_WORKER.git
git clone https://github.com/bizhan-laripour/RMM_AGENT.git
cd RMM_CONFIG_SERVER || exit
sudo -S  sudo docker build -t config .
cd ../RMM_DISCOVERY || exit
sudo -S  sudo docker build -t discovery .
cd ../RMM_AGENT || exit
 sudo -S  sudo docker build -t agent .
cd ../RMM_WORKER || exit
 sudo -S  sudo docker build -t worker .
cd ../RMM_CONFIG_REPO/docker-compose || exit
sudo -S  sudo docker compose up -d


echo -e "


${bold} ${GREEN}Thanks for joining us with this project.
 Good Luck.

 Im looking forward to answer any question
 Email: bizhan.laripour.herat@gmail.com





"
