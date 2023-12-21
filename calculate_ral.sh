#!/bin/bash

# Define text colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "${GREEN}Hey there! Welcome to the RAL Calculator for Developers! 😄${NC}"

# Ask for years of experience
read -p "How many years of experience do you have? " experience

# Ask for programming languages known
echo "${YELLOW}Which programming languages do you know? (Choose from the list)"
echo "1. Python"
echo "2. Java"
echo "3. JavaScript"
echo "4. C++"
echo "5. Other${NC}"
read -p "Enter the number corresponding to your choice: " language_choice

# Ask about the level of love for coding
read -p "On a scale of 1 to 10, how much do you love coding? " love_for_coding

# Ask about the number of projects delivered
read -p "How many projects have you delivered so far? " projects_delivered

# Check for Manager role
if [ $projects_delivered -ge 190 ]; then
    echo "\n🎩 ${YELLOW}Wow! You're in a managerial position with a whopping $projects_delivered projects delivered.${NC}"
    read -p "Are you Dennis Ritchie or some coding bot? (Enter 'D' for Dennis Ritchie, 'B' for coding bot, or any other key for a mystery): " dennis_bot_choice
    case $dennis_bot_choice in
        [Dd])
            role="God"
            echo "${GREEN}Nice choice, Dennis! Keep leading the way! 😄${NC}"
             # Display the calculated RAL
            echo "\n🚀 ${YELLOW}Calculating your RAL...${NC}"
        
            # Sleep for dramatic effect
            sleep 2
            echo "${GREEN}You can ask whatever you want 💰💰💰"
            ;;
        [Bb])
            role="Coding Bot"
            echo "${GREEN}Beep Boop! Coding Bot it is! 🤖${NC}"
            ;;
        *)
            role="Mystery Developer"
            echo "${GREEN}A mystery developer! The coding world is full of surprises. 🕵️‍♂️${NC}"
            ;;
    esac
else
    # Calculate RAL based on Italy RAL ranges
    if [ $experience -ge 0 ] && [ $experience -lt 3 ]; then
        level="Junior"
        ral_range="18-24"
    elif [ $experience -ge 3 ] && [ $experience -lt 8 ]; then
        level="Medium"
        ral_range="24-35"
    else
        level="Senior"
        ral_range="35-50"
    fi

    role=$level  # If not a Manager, then it's based on the regular level

    # Display the calculated RAL
    echo "\n🚀 ${YELLOW}Calculating your RAL...${NC}"

    # Sleep for dramatic effect
    sleep 2

    echo "\n🎉 ${GREEN}Congratulations! Based on your experience, your RAL as a $role developer in Italy is in the range $ral_range.${NC}"

    # Provide some additional insights based on love for coding
    if [ $love_for_coding -ge 8 ] && [ $projects_delivered -ge 5 ]; then
        echo "🌟 ${GREEN}Your passion for coding and the number of projects delivered reflect a stellar performance! Keep up the fantastic work!${NC}"
    elif [ $love_for_coding -lt 5 ]; then
        echo "⚠️ ${RED}Consider boosting your love for coding; it's the key to unlocking endless possibilities in the world of development.${NC}"
    fi
fi
