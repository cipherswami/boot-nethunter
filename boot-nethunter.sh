# This is a simple shell script whcih checkes for ".boot_kali.sh" file in present directory,
# if presents it executes kali Chroot, if not it creates one and executes Kali Chroot.

FILE=./.boot_kali.sh  # Variable name FILE is being assigned to the file in present directory.

if [ -f "$FILE" ]; then

    # sources ".boot_Kali.sh" to superuser child process.
    su -c source ./.boot_kali.sh 

else 

    # This is the envirnoment that needs to be pre initialised, in superuser
    # child process, Which is being written to ".boot_kali.sh" file.
    echo "# This file is a part of 'boot-nethunter'," >> .boot_Kali.sh
    echo "# Don't Modify anything until you are fully aware of what you are doing ..." >> .boot_Kali.sh
    echo " " >> .boot_Kali.sh
    echo "export PATH=\$PATH:/product/bin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/apex/com.android.runtime/bin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/odm/bin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/vendor/bin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/vendor/xbin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/data/data/com.offsec.boot_kali/files/scripts" >> .boot_kali.sh
    echo "export PATH=\$PATH:/data/data/com.offsec.boot_kali/files/scripts/bin" >> .boot_kali.sh
    echo "export PATH=\$PATH:/data/data/com.termux/files/home" >> .boot_kali.sh
    echo "bootkali" >> .boot_kali.sh
    echo " " >> .boot_kali.sh
    echo "# Author: Aravind Swami [github: name_is_cipher]" >> .boot_Kali.sh
    echo "# Mail: aravindswami135@gmail.com" >> .boot_Kali.sh

    # This Adds executive permissions to ".boot_kali.sh" file.
    chmod +x .boot_kali.sh

    # It sources ".boot_Kali.sh" to superuser child process same as before but, only for the 1st time.
    su -c source ./.boot_kali.sh

fi

# Author: Aravind Swami [github: name_is_cipher]
# Mail: aravindswami135@gmail.com
