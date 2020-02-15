RetroPie-Setup
==============

General Usage
-------------

Shell script to setup a PC running Ubuntu with many emulators and games, using EmulationStation as the graphical front end.

This script is designed for use on Ubuntu, any other system is unadvised since we (RetroHeim) are not going to be making sure that systems using an OS other than Ubuntu will work. Although the likelihood of it working at the start is high, if you do try to do so.

To run the RetroPie Setup Script make sure that your APT repositories are up-to-date and that Git is installed:

```shell
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install git
```

Then you can download the latest RetroHeim edition RetroPie setup script with

```shell
cd
git clone --depth=1 https://github.com/RetroHeim-Soft/RetroPie-Setup.git
```

The script is executed with 

```shell
cd RetroPie-Setup
sudo ./retropie_setup.sh
```

When you first run the script it may install some additional packages that are needed.

Binaries and Sources
--------------------

On the Raspberry Pi, RetroPie Setup offers the possibility to install from binaries or source. For other supported platforms only a source install is available. Installing from binary is recommended on a Raspberry Pi as building everything from source can take a long time.

For more information visit the blog at https://retropie.org.uk or the repository at https://github.com/RetroPie/RetroPie-Setup.

Wiki
----

You can find useful information about several components or for several frequently asked questions in the [wiki](https://github.com/RetroPie/RetroPie-Setup/wiki) of the RetroPie Script. If you think that there is something missing, you are invited to add it to the wiki.


Thanks
------

This script just simplifies the usage of the great works of many other people that enjoy the spirit of retrogaming. Many thanks go to them!
