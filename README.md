# Boot Nethunter
- It is an executable that boots Kali-Chroot (_one Installed with Nethunter_) in Termux. [Rooted Andriod]

**NOTE**: This is not same as _Nethunter Rootless_.

# Motive
If you have ever used Nethunter-Rooted, then you would have definitely come across Nethunter-terminal. _Nethunter-terminal_ is one of the good interfaces but, it doesn't support that much customizability when compared to other interfaces such as Termux.  

If you ever took a fancy to start the _Rooted Kali chroot_ in _termux_ but faild. Then this is the right place.

# Pre-Requisites
1. Install git in Termux: `pkg install git`
2. Grant root access to Termux by entering the following command: `su`  
   and grant root access with what ever root manager you use.

# Setup Instructions
1. Git this repo to HOME directory of Termux: `git clone https://github.com/name-is-cipher/boot-nethunter.git ./Nethunter`
2. Copy "boot-nethunter.sh" file from download git folder to HOME directory of Termux: `cp ./Nethunter/boot-nethunter.sh ./`
3. Make "boot-nethunter.sh" executable: `chmod +x boot-nethunter.sh`
5. et voilà, setup is finshed !!!
6. Run the executable to boot kali-Chroot: `./boot-nethunter.sh`

# Additinol Tweaks
- Direct Run the file i.e execute `boot-nethuter` instead of `./boot-nethunter` .  
  This is done by adding HOME directory to PATHs Variable, which is implemented by _**.bashrc**_ file.  
  You can simply copy my _.bashrc_ file that is included in the Repo: `cp ./Nethunter/.bashrc $HOME`     
If you already have your own _.bashrc_ file, then you can add contents of my  _.bashrc_ file to the end of your _.bashrc_ file.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com

