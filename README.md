echo -e "\033[5;32;m        ___     __   _
       / \ \   / /__| | ___  __ _ _ __   ___ _ __
      / _ \ \ / / __| |/ _ \/ _' | '_ \ / _ \ '__|
     / ___ \ V / (__| |  __/ (_| | | | |  __/ |
    /_/   \_\_/ \___|_|\___|\__,_|_| |_|\___|_| \033[0m \n"

echo -e "    \033[40;38;5;82m Version \033[30;48;5;82m 1.0.0  \033[0m"
echo -e "    \033[30;48;5;82m    Copyright \033[40;38;5;82m RedQueen979   \033[0m \n"
LOG_FILE="/data/data/com.termux/files/home/cleanup_log.txt"

echo -e "    \033[1;31;40m  Advanced Termux Junk Cleanup Tool by Arjun V.  \033[0m"
echo -e "    \e[1;34m-------------------------------------------\e[0m"
This tool is designed to perform advanced cleanup tasks in Termux, including clearing cached packages, removing temporary files, and deleting unnecessary logs. It does not remove your installed packages or important data.

# Tested on Termux

# installation
1. `apt install git`
2. `git clone https://github.com/RedQueen979/AVcleaner && cd AVcleaner && chmod +x AVcleaner.sh && ln -s ~/AVcleaner/AVcleaner.sh /data/data/com.termux/files/usr/bin/clean`

3. All done now type 'clean' to run the tool. 

The script will prompt you for selective cleanup.

# Features

- Selective cleanup options (cached packages, temporary files, logs).
- Logs cleanup details in `cleanup_log.txt`.

# Notes
- This tool is intended for advanced users who want to customize their cleanup process.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).