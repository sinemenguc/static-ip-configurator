# Static IP Configurator

This bash script is used in Debian and Debian-based Linux distributions to assign a static IP address to a network interface. 
This script backs up the existing network configuration file, then retrieves the necessary information from the user, such as IP address, netmask, gateway and DNS name servers, and creates a new network configuration file. 
Finally, the system is rebooted.

## Instructions for Use

Before running this script, make sure you have the appropriate permissions. If necessary, make it executable with the following command:
```
chmod +x static-ip.sh
```
Run the script:
```
./static-ip.sh
```
When the script is run, you will be asked to enter information about the IP address, netmask, gateway and DNS name servers.

After running the script, the system will reboot.

## Note
This script backs up the existing network configuration file. However, be careful and it is important to know your system's network configuration. Incorrect configuration can lead to a remotely inaccessible system.
