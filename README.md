# Boot Nethunter

- It is an executable that boots Kali-Chroot (_one Installed with Nethunter_) in Termux. [Rooted Andriod]

**NOTE**: This is not same as _Nethunter Rootless_.

# Motive
If you have ever used Nethunter-Rooted, then you would have definitely come across Nethunter-terminal. _Nethunter-terminal_ is one of the good interfaces but, it doesn't support that much customizability when compared to other interfaces such as Termux.  

If you ever took a fancy to start the _Rooted Kali chroot_ in _termux_ but faild. Then this is the right place.

# Pre-Requisites
1. Update Termux to latest Version:
    - `$ apt update`
    - `$ apt uprade -y`
2. Install git: `$ pkg install git`
3. If prompeted for superuser access to termux, grant it.
4. Restart the Termux.

# Setup Instructions
1. Git clone this repo to your HOME directory of Termux: 
   `$ git clone https://github.com/name-is-cipher/boot-nethunter.git`
3. Now, move into 'boot-nethunter' folder, there you will find installer "install_boot-kali.sh".
4. Make "install_boot-kali.sh" executable: `$ chmod +x install_boot-kali.sh`
5. Now just run: `$ ./install_boot-kali.sh`
6. et voilà, your installation is finshed !!!
7. Now you can safely remove the installer folder from HOME directory: `rm -rf boot-nethunter`
8. USAGE: Run 'boot-kali' any where in termux to start kali chroot.

# Additinol info
- This intallation creates a execuatable "bin" folder in $HOME/.termux folder, you can place your any personal binaries or executables in that folder.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com

