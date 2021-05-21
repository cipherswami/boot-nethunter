# This is a simple shell script whcih checkes for "$HOME/.termux/boot_kali.sh" file in present directory,
# if presents it executes kali Chroot, if not it creates one and executes kali Chroot.

source banner-boot_nethunter.sh
print_banner

<<'COMMENTS'

TERMUX=$HOME/.termux  # Variable name FILE is being assigned to the file in present directory.
BOOTKALI=$HOME/.termux/boot_kali.sh

if [ -f "$TERMUX" ]; then

else

    mkdir .termux

fi

if [ -f "BOOTKALI" ]; then

    # sources "$HOME/.termux/boot_kali.sh" to superuser child process.
    su -c source ./$HOME/.termux/boot_kali.sh 

else 

    # This is the envirnoment that needs to be pre initialised, in superuser
    # child process, Which is being written to "$HOME/.termux/boot_kali.sh" file.
    echo "# This file is a part of 'boot-nethunter'," >> $HOME/.termux/boot_kali.sh
    echo "# Don't Modify anything until you are fully aware of what you are doing ..." >> $HOME/.termux/boot_kali.sh
    echo " " >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/product/bin" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/apex/com.android.runtime/bin" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/odm/bin" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/vendor/bin" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/vendor/xbin" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/data/data/com.offsec.nethunter/files/scripts" >> $HOME/.termux/boot_kali.sh
    echo "export PATH=\$PATH:/data/data/com.offsec.nethunter/files/scripts/bin" >> $HOME/.termux/boot_kali.sh
    echo "bootkali" >> $HOME/.termux/boot_kali.sh
    echo " " >> $HOME/.termux/boot_kali.sh
    echo "# Author: Aravind Swami [github: name-is-cipher]" >> $HOME/.termux/boot_kali.sh
    echo "# Mail: aravindswami135@gmail.com" >> $HOME/.termux/boot_kali.sh

    # This Adds executive permissions to "$HOME/.termux/boot_kali.sh" file.
    chmod +x $HOME/.termux/boot_kali.sh

    # It sources "$HOME/.termux/boot_kali.sh" to superuser child process same as before but, only for the 1st time.
    su -c source ./$HOME/.termux/boot_kali.sh

fi

# Author: Aravind Swami [github: name-is-cipher]
# Mail: aravindswami135@gmail.com

COMMENTS

echo "hi"