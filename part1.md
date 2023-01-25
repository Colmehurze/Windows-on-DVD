Follow these steps one by one:

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

10. After you are done installing, shut down windows and close the qemu window. Then enter these commands one by one in a terminal:

    cp /root/Windows.qcow2 /dev/block/sda1/

    (Don't forget to replace sda1 with your local hard disk path.) 
    
11. Now you can reboot your system. Boot from DVD and run the live os. Then open terminal and enter the following commands to restore your windows:

    sudo apt update 

    sudo apt install wget

    sudo apt install qemu-system-x86_64

    qemu-system-x86_64 -hda Windows.qcow2 -m 3G 
    

12. When you are done using windows and have shut down qemu, type this command on your terminal and ONLY THEN TURN OFF YOUR PC :

    cp /root/Windows.qcow2 /dev/block/sda1/

(Don't forget to replace sda1 with your local hard disk path.) 
    
 
