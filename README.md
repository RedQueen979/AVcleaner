          🇦​​​​​🇻​​​​​🇨​​​​​🇱​​​​​🇪​​​​​🇦​​​​​🇳​​​​​🇪​​​​​🇷​​​​​

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