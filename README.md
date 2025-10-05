# Boot Nethunter

Boots the **Kali Chroot (Nethunter-Rooted)** environment directly inside **Termux**, giving you a fully functional rooted Kali interface with Termux’s flexibility and customizability.

> 🧩 **Rooted Android ONLY**

### Important Notice:

Hey everyone,

I originally created this repo when I was quite young, mainly for my own convenience. But since so many of you are now using it (which is awesome!), I’m restructuring and cleaning things up properly to make it more consistent and reliable.

For anyone who has **old forks**, please **discard old commits** when syncing — the old code is preserved in **`v1.0.0`**, but all new work will be structured differently going forward.

Thanks for your understanding and continued support ❤️

## Motive

If you’ve ever used **Nethunter-Rooted**, you’ve likely come across the **Nethunter Terminal**. While it’s solid, it doesn’t offer the same customizability or integration that **Termux** provides.

**Boot Nethunter** bridges that gap — it lets you boot the **rooted Kali chroot** directly inside Termux, with all the benefits of your familiar Termux environment.

## Pre-Requisites

1. Update Termux to the latest version:

   ```bash
   apt update && apt upgrade -y
   ```

2. Restart Termux. If prompted for **superuser access** at any point, **grant it**.

## Instructions

1. Download the installer:

   ```bash
   wget https://github.com/cipherswami/boot-nethunter/releases/download/v1.1/install_boot-kali.sh
   ```

2. Make it executable:

   ```bash
   chmod +x install_boot-kali.sh
   ```

3. Run the installer:

   ```bash
   ./install_boot-kali.sh
   ```

4. **et voilà!** Installation complete 🎉. Now, clean up:

   ```bash
   rm install_boot-kali.sh
   ```

## Usage

Run `boot-kali` anywhere inside Termux to start the **Kali chroot** environment.

## Additional Info

- Installation creates a `bin` folder under `$HOME/.termux/`, which is automatically added to your `PATH`.
- You can drop any binaries or executables into that folder and call them globally from Termux.

## People

Author: **Aravind Potluri** <[aravindswami135@gmail.com](mailto:aravindswami135@gmail.com)>

## LICENSE

[MIT © Aravind Potluri](./LICENSE)
