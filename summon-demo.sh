#!/bin/bash

green=$(tput setaf 2)
normal=$(tput sgr0)

source ./demo.config

printf "\n\n%s\n" "${normal}Before summon [env | grep ^DB]"
env | grep ^DB
printf "\n%s\n" "."

read -p "-> " foo

printf "\n\n%40s\n" "${normal}Using summon to retrieve database/username and database/password from $CONJUR_APPLIANCE_URL..."
printf "%20s\n" "${normal}[env | grep ^DB]${green}"

/usr/local/bin/summon -p ./iam_provider.py env | grep ^DB


printf "\n%s\n" "${normal}"

read -p "-> " foo
printf "\n\n%s\n" "${normal}After summon [env | grep ^DB]"
env | grep ^DB
printf "\n%s\n\n" "."
