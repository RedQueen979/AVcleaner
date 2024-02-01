#!/bin/bash

##----Banner----
echo -e "\033[5;32;m        ___     __   _
       / \ \   / /__| | ___  __ _ _ __   ___ _ __                                                                                                            / _ \ \ / / __| |/ _ \/ _' | '_ \ / _ \ '__|
     / ___ \ V / (__| |  __/ (_| | | | |  __/ |
    /_/   \_\_/ \___|_|\___|\__,_|_| |_|\___|_| \033[0m \n"

echo -e "    \033[40;38;5;82m Please Visit \033[30;48;5;82m www.github.com/RedQueen979  \033[0m"                                                       echo -e "    \033[30;48;5;82m    Copyright \033[40;38;5;82m RedQueen979   \033[0m \n"                                                                  LOG_FILE="/data/data/com.termux/files/home/cleanup_log.txt"

echo -e "    \033[1;31;40m  Advanced Junk Cleanup Tool by Arjun V.  \033[0m"
echo -e "    \e[1;34m-------------------------------------------\e[0m"

read -p "Do you want to clean cached packages? (y/n): " clean_packages
read -p "Do you want to clean temporary files? (y/n): " clean_temp
read -p "Do you want to remove unnecessary logs? (y/n): " clean_logs

echo -e "\n\e[1;34mCleaning Process:\e[0m"
echo -e "\e[1;34m------------------\e[0m" >> "$LOG_FILE"
echo -e "\e[1;34mDate: $(date)\e[0m" >> "$LOG_FILE"

cleanup() {                                                                                                                                                # Check if cached packages cleanup is selected
    if [ "$clean_packages" == "y" ]; then
        echo -e "\e[1;32mCleaning cached packages...\e[0m"
        deleted_packages=$(apt-get clean | grep "cleaned")
        echo -e "\e[1;32m$deleted_packages\e[0m" >> "$LOG_FILE"
    else
        echo -e "\e[1;33mSkipped cleaning cached packages.\e[0m"
    fi

    # Check if temporary files cleanup is selected
    if [ "$clean_temp" == "y" ]; then
        echo -e "\e[1;32mCleaning temporary files...\e[0m"
        deleted_temp=$(find /data/data/com.termux/files/home/tmp/ -type f -delete -print 2>/dev/null)
        echo -e "\e[1;32m$deleted_temp\e[0m" >> "$LOG_FILE"
    else
        echo -e "\e[1;33mSkipped cleaning temporary files.\e[0m"
    fi

    # Check if logs cleanup is selected
    if [ "$clean_logs" == "y" ]; then
        echo -e "\e[1;32mCleaning unnecessary logs...\e[0m"
        deleted_logs=$(find /data/data/com.termux/files/home -type f -name "*.log" -delete -print 2>/dev/null)
        echo -e "\e[1;32m$deleted_logs\e[0m" >> "$LOG_FILE"
    else
        echo -e "\e[1;33mSkipped cleaning unnecessary logs.\e[0m"
    fi

    echo -e "\n\e[1;34mCleanup completed. Details logged in $LOG_FILE.\e[0m"
}

cleanup