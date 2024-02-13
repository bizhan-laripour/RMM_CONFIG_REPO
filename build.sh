git clone https://github.com/bizhan-laripour/RMM_CONFIG_REPO.git
git clone https://github.com/bizhan-laripour/RMM_DISCOVERY.git
git clone https://github.com/bizhan-laripour/RMM_CONFIG_SERVER.git
git clone https://github.com/bizhan-laripour/RMM_WORKER.git
git clone https://github.com/bizhan-laripour/RMM_AGENT.git
cd RMM_CONFIG_SERVER
sudo -S  sudo docker build -t config .
cd ../RMM_DISCOVERY 
sudo -S  sudo docker build -t discovery .
cd ../RMM_AGENT 
 sudo -S  sudo docker build -t agent .
cd ../RMM_WORKER
 sudo -S  sudo docker build -t worker .
cd ../RMM_CONFIG_REPO/docker-compose
sudo -S  sudo docker compose up -d
