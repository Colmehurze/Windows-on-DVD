Part 1 - Booting the live os and setting up software. 

Follow these steps to complete part 1 :

1. Download the Debian live iso from the main page.

2. Burn it into a DVD (You can easily find guides on the internet) 

3. Boot your pc. Press your bios key/boot key to access boot menu. Select your DVD drive.

4. After the Debian loader appears, select try Debian/boot Debian live.

5. Wait few minutes until the os boots. Then open the terminal.

6. Enter the following commands one by one (You should be connected to the internet) :

   sudo apt update
   sudo apt install qemu-system-x86_64
   sudo apt install qemu-img

7. Keep your windows iso ready. You can copy it to the DVD drive after burning the linux iso or load it from your hard drive.

8. Enter the following commands on the terminal one by one:

   qemu-img create -f qcow2 Windows.qcow2 20G
   qemu-system-x86_64 -hda Windows.qcow2 -cdrom <enter path to windows iso> -m 3G

9. You should see a window opened with windows installer running. Install windows like you normally do on a pc. 
