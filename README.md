# Boot Nethunter

- It is an executable that boots Kali-Chroot (_one Installed with Nethunter_) in Termux. [Rooted Andriod]

**NOTE**: This is not same as _Nethunter Rootless_.

# Motive
If you have ever used Nethunter-Rooted, then you would have definitely come across Nethunter-terminal. _Nethunter-terminal_ is one of the good interfaces but, it doesn't support that much customizability when compared to other interfaces such as Termux.  

If you ever took a fancy to start the _Rooted Kali chroot_ in _termux_ but faild. Then this is the right place.

# Pre-Requisites
1. Update Termux to latest Version:
    - `$ apt update`
    - `$ apt upgrade -y`
2. Restart the Termux.
3. If prompeted for superuser access to termux at any point, grant it.

# Setup Instructions
1. Directly download the installer(install_boot-kali.sh) from releases:    
   `$ wget https://github.com/cipherswami/boot-nethunter/releases/latest/download/install_boot-kali.sh`  
4. Then make the installer executable: `$ chmod +x install_boot-kali.sh`
5. Now install boot nethunter: `$ ./install_boot-kali.sh`
6. et voilà, your installation is finshed !!!
7. Now you can safely get rid of the installer : `$ rm instll_boot-kali.sh`
## Easy installation 

```bash
pkg install git && git clone https://github.com/abidhasansojib/boot-nethunter.git && cd boot-nethunter && chmod +x install_boot-kali.sh && ./install_boot-kali.sh
```

If you still face any issues about tmp directory run this in nethunter terminal

```bash
cd && echo "export TMPDIR=/tmp" >> .zshrc
```


8. **USAGE**: Run 'boot-kali' any where in termux to start kali chroot.

# Additinol info
- This intallation creates a "bin" folder in $HOME/.termux direcotry, which is being added to PATH variable i.e, you can place any binaries (or) executables in that folder that can be called from any where in termux.

# About Author
> **Name**: Aravind Potluri \<CIPH3R\>  
> **Mail**: aravindswami135@gmail.com  
> **Github**: [name_is_cipher](https://github.com/name-is-cipher)  

