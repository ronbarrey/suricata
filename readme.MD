# Suricata

Suricata Docker container for creating and testing Suricata rules.

#### Rules
Update the `custom.rules` file and then run `update.sh` to add custom rules to the image.

#### Suricata Config
Modify the `suricata.yaml` config and then run `update.sh` to make changes to the Suricata config.

#### Build

    ./update.sh
    
#### Run

    ./scan.sh <path_to_pcaps>
