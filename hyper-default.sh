# This shell script will set Hyper Terminal as your default one
# It should be run with sudo

echo -e " 🔥 Setting Hyper as the default terminal... 🔥 "

# Install Hyper terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /opt/Hyper/hyper 50

# Set it as the default terminal in GNOME Environment
"if ps -o cmd= -p $(ps -o ppid= -p $$) | grep -q gnome; then
  nohup hyper $(pwd) &> /dev/null &
  sleep 0.1s
  exit
fi" >> ~/.bashrc

echo
echo
echo -e "Done 👍"
