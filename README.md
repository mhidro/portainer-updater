# Portainer Updater
Forked 06-02-2025
```
 _____           _        _                   _    _           _       _            
|  __ \         | |      (_)                 | |  | |         | |     | |           
| |__) |__  _ __| |_ __ _ _ _ __   ___ _ __  | |  | |_ __   __| | __ _| |_ ___ _ __ 
|  ___/ _ \| '__| __/ _` | | '_ \ / _ \ '__| | |  | | '_ \ / _` |/ _` | __/ _ \ '__|  
| |  | (_) | |  | || (_| | | | | |  __/ |    | |__| | |_) | (_| | (_| | ||  __/ |    
|_|   \___/|_|   \__\__,_|_|_| |_|\___|_|     \____/| .__/ \__,_|\__,_|\__\___|_|     
                                                     | |                             
                                                     |_|                             
```

*by mynameismaurizio*  
*for Portainer CE*

## Overview
This script allows you to **update your Portainer CE (Community Edition)** to the latest or specific version. The script is designed for **ease of use**, **Docker integration**, and **community contribution**.

## Features
- Pulls the latest or a specified version of Portainer CE
- Stops and removes the current Portainer container
- Creates a new container with the updated version
- Ensures the new Portainer container will restart unless stopped

## License
This repository is licensed under the **GNU Affero General Public License (AGPL) v3.0**.

## Installation Guide

Follow these steps to copy and set up the **Portainer Updater** script on your machine:

### Prerequisites
1. **Docker** 
   
2. **Git** (optional)


### Steps to Set Up

#### Option 1: Clone the Repository
If you want to clone the repository to get the script:

1. **Clone the repository**:
```bash
git clone https://github.com/mhidro/portainer-updater.git
cd portainer-updater
```

#### Option 2: Download the Script
Alternatively, if you want to just copy the script, follow these steps:

1. Create a directory for the script in your home directory:
```bash
mkdir -p ~/.local/bin
```

2. Create and edit the script file:
```bash
nano ~/.local/bin/update-portainer
```

3. Make the script executable:
```bash
chmod +x ~/.local/bin/update-portainer
```

#### Option 3: Make the Script Accessible System-Wide
If you want to make sure you can run the script from anywhere in the system:

1. Move the script to the appropriate location:
```bash
sudo mv ~/.local/bin/update-portainer /usr/local/bin/update-portainer
```

### Running the Script

1. To update to the latest version of Portainer:
```bash
update-portainer
```

2. To update to a specific version:
```bash
update-portainer 2.21.5
```

### Verify the Update

1. Check Docker containers:
```bash
sudo docker ps
```

2. Access Portainer:
   - HTTP: `http://<your-server-ip>:9000`
   - HTTPS: `https://<your-server-ip>:9443`

## Uninstall or Modify the Script

To remove the script:
```bash
# If installed in local bin
rm ~/.local/bin/update-portainer

# If installed system-wide
sudo rm /usr/local/bin/update-portainer
```

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a new branch for your feature or fix
3. Commit your changes
4. Push to your forked repository
5. Open a pull request with a detailed explanation of your changes

## Credits

This script was created by mynameismaurizio and is shared with the community for free.

This script is based on a script I found on [Diego Betto's page](https://diegobetto.com/portainer-update). Liked the idea, so I rewrote the code and turned it into this repo.

## Support

If you encounter any issues or have questions, please open an issue in the GitHub repository.

Thank you for using Portainer Updater! 🚀
