# This is boot-nethunter installer file,
# you can safly delete after installation.

function banner_boot-nethunter() {

  blue='\033[1;34m'
  light_cyan='\033[1;96m'
  reset='\033[0m'

    clear
    printf "  ${blue}#####################################\n"
    printf "  ${blue}##                                 ##\n"
    printf "  ${blue}##         Boot-Nethunter          ##\n"
    printf "  ${blue}##                                 ##\n"
    printf "  ${blue}#####################################\n\n"
      echo "  ${blue}||||||||||  ${light_cyan}name-is-cipher  ${blue}||||||||||"
            echo "---------------------------------------------${reset}"
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
    echo " [!] if 'y/n' prompted any, hit -> y"
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

function install_boot-nethunter() {

    echo " [*] Installing Boot Nethunter ..."
    echo " "
    # Making boot-nethunter.sh

    echo "# This scrpit boots nethunter in termux" >> ~/.termux/bin/boot-nethunter.sh
    echo " " >> ~/.termux/boot_nethunter.sh
    echo "su -c '" >> ~/.termux/bin/boot-nethunter.sh
    echo "nethunter_env=\$PATH:/system/sbin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/product/bin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/apex/com.android.runtime/bin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/odm/bin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/vendor/bin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/xbin" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/data/data/com.offsec.nethunter/files/scripts" >> ~/.termux/boot_nethunter.sh
    echo "nethunter_env=\$nethunter_env:/data/data/com.offsec.nethunter/files/scripts/bin" >> ~/.termux/boot_nethunter.sh
    echo "export PATH=\$nethunter_env; exec su" >> ~/.termux/boot_nethunter.sh
    echo " " >> ~/.termux/boot_nethunter.sh
    echo "# Author: Aravind Swami [github: name-is-cipher]" >> ~/.termux/boot_nethunter.sh
    echo "# Mail: aravindswami135@gmail.com" >> ~/.termux/boot_nethunter.sh

    chmod +x ~/.termux/bin/boot-nethunter.sh
    ibar ~/.termux/bin/boot-nethunter.sh 15
    echo " "
    echo " [*] Installation successful !!!"
    echo " "
    echo "> Run 'boot-nethunter.sh' anywhere to start Kali Chroot."
    echo " "
    read 
    exit

}

############ Main #############

banner_boot-nethunter

check_update

check_tbin

install_boot-nethunter

