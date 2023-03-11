#!/bin/bash

LIGHTBLUE="\e[94m"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ENDCOLOR="\e[0m"

echo -e "${LIGHTBLUE}MTG LANDBASE CALCULATOR${ENDCOLOR}"
read -p "How many cards are in your deck?: " decksize
read -p "How many of those are spells?: " nlands
read -p "What is the Total Converted Mana Cost of those spells?: " tcmc

acmc=$(bc <<< "scale=2; $tcmc/$nlands")
lratio=$(bc <<< "scale=2; $acmc/7")
lratiop=$(bc <<< "scale=2; $acmc/7*100")
lcount=$(bc <<< "scale=2; $lratio*$decksize")

echo -e "${LIGHTBLUE}= = = = =${ENDCOLOR}"
echo -e "Your Average Converted Mana Cost is ${BOLDGREEN}$acmc${ENDCOLOR},"
echo -e "so your ideal Land to Non-Land Ratio is ${BOLDGREEN}${lratiop%.*}%${ENDCOLOR},"
echo -e "therefor you need at least ${BOLDGREEN}${lcount%.*} lands${ENDCOLOR}."
