##############################################################################################
#                                                                                            #
#  _____           _        _                   _    _           _       _                   #
# |  __ \         | |      (_)                 | |  | |         | |     | |                  #
# | |__) |__  _ __| |_ __ _ _ _ __   ___ _ __  | |  | |_ __   __| | __ _| |_ ___ _ __        #
# |  ___/ _ \| '__| __/ _` | | '_ \ / _ \ '__| | |  | | '_ \ / _` |/ _` | __/ _ \ '__|       #
# | |  | (_) | |  | || (_| | | | | |  __/ |    | |__| | |_) | (_| | (_| | ||  __/ |          #
# |_|   \___/|_|   \__\__,_|_|_| |_|\___|_|     \____/| .__/ \__,_|\__,_|\__\___|_|          #
#                                                     | |                                    #
#                                                     |_|                                    #
#                                                                                            #
#                                    Portainer Updater                                       #
#                                    by mynameismaurizio                                     #
#                                    for the community                                       #
#                                    forked 06-02-2025                                       #
##############################################################################################


#!/bin/bash
# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No color
# Define Portainer version (default to latest if not provided)
target_version=${1:-"latest"}
# Pull the specified Portainer image
echo -e "${YELLOW}Pulling Portainer CE version $target_version...${NC}"
if sudo docker pull portainer/portainer-ce:$target_version; then
echo -e "${GREEN}Successfully pulled Portainer CE version $target_version${NC}"
else
echo -e "${RED}Error pulling Portainer version $target_version. Please check your connection and try again.${NC}"
exit 1
fi
# Stop and remove the existing Portainer container
echo -e "${YELLOW}Stopping and removing the current Portainer container...${NC}"
if sudo docker stop portainer && sudo docker rm portainer; then
echo -e "${GREEN}Successfully stopped and removed the current Portainer container.${NC}"
else
echo -e "${RED}Error stopping/removing the Portainer container. Please ensure the container is running.${NC}"
exit 1
fi
# Start the new Portainer container
echo -e "${YELLOW}Starting Portainer version $target_version...${NC}"
if  docker compose up -d; then
echo -e "${GREEN}Portainer has been updated to version $target_version!${NC}"
else
echo -e "${RED}Error starting the new Portainer container. Please check Docker logs for details.${NC}"
exit 1
fi
