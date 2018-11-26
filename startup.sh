sudo apt-get update && sudo apt-get install unzip
curl -fsSL -o vanilla.zip "https://github.com/vanilla/vanilla/releases/download/Vanilla_2.6.4/vanilla-2.6.4.zip"
unzip vanilla.zip -d ./app
rm vanilla.zip
sudo docker-compose up