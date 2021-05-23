#! /data/data/com.andriod/files/usr/bin/bash

# This is boot-nethunter installer,
# you can delete this file safely after installation.

function banner_boot-nethunter() {

  blue='\033[1;34m'
  light_cyan='\033[1;96m'
  reset='\033[0m'

    clear
    printf "  ${blue}##############################\n"
    printf "  ${blue}##                          ##\n"
    printf "  ${blue}##     Boot-Nethunter       ##\n"
    printf "  ${blue}##                          ##\n"
    printf "  ${blue}##############################\n"
    printf "  ${blue}|||||| ${light_cyan}name-is-cipher ${blue}||||||||\n"
    printf "  ${blue}--------------------------------------${reset}"
    echo "  "
    echo "  "

}

function check_update() {

if [ ! -d ~/.termux ]; then

    clear
    echo " "
    echo " [!] Your are on older version of Termux !!!"
    echo "     Updating Termux...."
    sleep 4
    apt update
    clear
    echo " [!] if prompted any, hit -> y"
    sleep 5
    apt upgrade -y
    apt install wget -y
    clear
    echo " "
    echo " [*] You need to completly restart the termux, "
    echo "     And start the installation again !!!"
    echo " "
    exit;
fi

}

function check_tbin() {

    if [ ! -d ~/.termux/bin ]; then

        mkdir ~/.termux/bin
        echo " " >> ~/.bashrc
        echo "# This PATH is for Termux superuser bin folder" >> ~/.bashrc
        echo " " >> ~/.bashrc
        echo "export PATH=\$PATH:/data/data/com.termux/files/home/.termux/bin" >> ~/.bashrc

    fi

}

function clean_cipherus() {

    if [ -f cipherus-libraries.sh ]; then
        rm cipherus-libraries.sh
        rm ~/.wget-hsts
    fi
}

function ibar {

    FILE=$1
    BAR='##############################'
    FILL='------------------------------'
    Lines=$2  # To No. lines in file that need to be present.
    barLen=30 # Bar Lenght of progressbar.
    count=0

    echo " "
    # --- iterate over lines in of passed on file ---
    while IFS=, read -r line; do
    # update progress bar
    sleep 0.3
    count=$(($count + 1))
    percent=$((($count * 100 / $Lines * 100) / 100))
    i=$(($percent * $barLen / 100))
    echo -ne "\r[${BAR:0:$i}${FILL:$i:barLen}] $count/$Lines ($percent %)"
    done < $FILE
    echo " "

    # Integrity checker
    if [ $percent != 100 ]; then
    echo " "
    echo " [!] File is corrupt, Please try to reinstall !!!"
    echo " "
    echo " If you keep seeing this error, contact the Author:-"
    echo " "
    echo " github: name-is-cipher"
    echo " Twitter: name_is_cipher"
    echo " Mail: aravindswami135@gmail.com"
    clean_cipherus
    read
    exit
    fi
    echo " "
    echo " "

}

function install_boot-nethunter() {

    echo " [*] Installing Boot Nethunter ..."
    echo " "
    # Making boot-kali

    echo "#! /data/data/com.termux/files/usr/bin/bash" >> ~/.termux/bin/boot-kali
    echo "# This scrpit boots nethunter in termux" >> ~/.termux/bin/boot-kali
    echo >> ~/.termux/bin/boot-kali
    echo "su -c '" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$PATH:/system/sbin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/product/bin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/apex/com.android.runtime/bin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/odm/bin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/vendor/bin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/vendor/xbin" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/data/data/com.offsec.nethunter/files/scripts" >> ~/.termux/bin/boot-kali
    echo "nethunter_env=\$nethunter_env:/data/data/com.offsec.nethunter/files/scripts/bin" >> ~/.termux/bin/boot-kali
    echo "export PATH=\$nethunter_env; exec bootkali'" >> ~/.termux/bin/boot-kali
    echo >> ~/.termux/bin/boot-kali
    echo "# Author: Aravind Swami [github: name-is-cipher]" >> ~/.termux/bin/boot-kali
    echo "# Mail: aravindswami135@gmail.com" >> ~/.termux/bin/boot-kali

    chmod +x ~/.termux/bin/boot-kali
    ibar ~/.termux/bin/boot-kali 16
    echo " "
    echo " [*] Installation successful !!!"
    echo " "
    echo "> Run 'boot-kali' anywhere to start Kali Chroot."
    echo " "
    echo " [*] Termux needs to be restarted to work properly,"
    echo "     Please restart !"
    echo " "
    read
    exit

}

############ Main #############

banner_boot-nethunter

check_update

check_tbin

install_boot-nethunter

##############################
