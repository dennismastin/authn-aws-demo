#!/bin/bash
green=$(tput setaf 2)
normal=$(tput sgr0)

source ./demo.config

printf "\n\n%40s\n" "${normal}Retrieving database/username from $CONJUR_APPLIANCE_URL...${green}"

./iam_provider.py database/username 2>/dev/null


printf "\n\n\n%40s\n" "${normal}Retrieving database/password from $CONJUR_APPLIANCE_URL...${green}"

./iam_provider.py database/password 2>/dev/null


printf "\n%1s\n" "${normal} ${normal}"
