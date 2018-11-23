apt-get update && apt-get install unzip
export VANILLA_VERISON=2.6.4
curl -o vanilla.zip "https://github.com/vanilla/vanilla/releases/download/Vanilla_${VANILLA_VERSION}/vanilla-${VANILLA_VERSION}.zip
unzip vanilla.zip -d ./app
rm vanilla.zip
sudo docker-compose up