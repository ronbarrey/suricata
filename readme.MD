# Suricata

Suricata Docker container for creating and testing Suricata rules.

#### Rules
Update the `custom.rules` file and then run `update.sh` to add custom rules to the image.

#### Suricata Config
Modify the `suricata.yaml` config and then run `update.sh` to make changes to the Suricata config.

#### Docker Install

    sudo apt-get update && sudo apt-get install docker.io
    
###### Post Installation Steps

Create Docker group

    sudo groupadd docker

Add user to group (logoff required)

    sudo usermod -aG docker $USER

Enable Docker service during boot (reboot required)
    
    sudo systemctl enable docker

#### Build/Update Docker Image

    ./update.sh
    
#### Run Docker Image

    ./scan.sh <path_to_pcaps>
