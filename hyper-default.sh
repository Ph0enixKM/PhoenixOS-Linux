# /bin/bash
# This shell script will set Hyper Terminal as your default one
# It should be run with sudo

cmdcol="\e[2m"
cmdcls="\e[0m"
cmderr="\e[31m"
cmdok="\e[32m"

echo -e " 🔥 Setting Hyper as the default terminal... 🔥 "

echo -e $cmdcol
gsettings --version
echo -e $cmdcls

if [[ $? != "0" ]] 
    then
    echo -e "${cmderr}You have to install dconf-tools. Run the following command:"
    echo -e "\e[1m  sudo apt-get install dconf-tools ${cmdcls}"
    exit
fi

count=`cat /usr/bin/x-terminal-emulator | grep -c "hyper"`

# If hyper wasn't added to terminals - do it
if [[ $count == "0" ]] 
    then
    echo -e $cmdcol
    sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /opt/Hyper/hyper 50
    echo -e $cmdcls
fi

# Install Hyper terminal

# Shall we install bash as the 
echo -e "${cmderr}If you are an Ubuntu user, you won't be able to use"
echo -e "the Hyper terminal in nautilus (file browser) shortcut"
echo -e "'Open in Terminal'. The reason of that is because"
echo -e "the terminal is hardcoded."
echo 
echo -e "Do you want to proceed to workaround? [Y/N]${cmdcls}"
echo -e "\e[2;31mThis will add a piece of code to a bash script"
echo -e "which closes gnome terminal and openes Hyper"
echo -e "whenever you open the gnome terminal${cmdcls}"

while [[ $ans != "y" && $ans != "Y" && $ans != "n" && $ans != "N" ]]
    do
    echo -en "\e[33m"
    read ans
    echo -e "\e[0m"
done

if [[ $remove_gnome -eq "y" || $remove_gnome -eq "Y" ]]
    then
    echo -e "${cmdok}Proceeding 👌${cmdcls}"
    echo "if ps -o cmd= -p $(ps -o ppid= -p $$) | grep -q gnome; then
        nohup hyper $(pwd) &> /dev/null &
        sleep 0.1s
        exit
    fi" >> ~/.bashrc

else
    echo -e "${cmdok}Not proceeding 👌${cmdcls}"
fi

echo
echo
echo -e "${cmdok}Done 👍${cmdcls}"
