SETUP GITHUB
sudo apt-get install git
sudo add-apt-repository ppa:git-core/ppa
git config --global user.name HuyMatec
git config --global user.email tranhoanghuy02.11.2003@gmail.com
git config --global --list

CÀI ĐẶT BÀN PHÍM TIẾNG VIỆT CHO MÁY
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
ibus restart

SETUP THEME 
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme/ && ls -lah && ./install.sh -t all -N glassy -s 220 && ls -lah *sh && sudo apt install gnome-tweaks

LỆNH LẤY SSH KEY
ssh-keygen -t rsa -b 4096
cat tên đường dẫn public

SETUP FISH SHELL
sudo apt-get install fish

Đặt làm mặc định
chsh -s (command -s fish)

CÀI ĐẶT FISHER NVM LOGO_FISH
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
fisher install laughedelic/fish_logo

SETUP FISH ICON
fisher install IlanCosman/tide@v6
Theo thứ tự chọn số 3 2 2 1 3 1 4 1 1 2 2 1 

CÀI ĐẶT JDK
sudo apt-get install openjdk-11-jdk

ĐẶT MẶC ĐỊNH NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm ls-remote
nvm install v18.18.0
nvm use v18.18.0
set --universal nvm_default_version v18.18.0

CÀI ĐẶT YARN GLOBAL TRÊN MÁY
npm install --global yarn

CÀI ĐẶT BUN TRÊN MÁY
curl -fsSL https://bun.sh/install | bash

CÀI ĐẶT ANDROID_STUDIO
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt install android-studio -y

SETUP MÔI TRƯỜNG FISH SHELL TRONG FILE config.fish
sudo nano .config/fish/config.fish

fish_logo blue cyan green

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# android-studio
set -gx ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH $BUN_INSTALL/bin $PATH

# flutter
set -gx FLUTTER_HOME "$HOME/flutter"
set -gx PATH $PATH $FLUTTER_HOME/bin

FIX CONTROL BRIGHTNESS Pop!_OS
sudo kernelstub -a "acpi_backlight=native"

FIX CONTROL BRIGHTNESS Ubuntu
sudo gedit /etc/default/grub
quiet splash pcie_aspm=force acpi_backlight=native
sudo update-grub

LỆNH LINUX
sudo dpkg --list | grep -i jdk
sudo apt-get remove --purge name_version 
sudo apt-get autoremove

CÀI ĐẶT FILE CÓ ĐUÔI .deb
sudo dpkg -i <ten_file.deb>

CÀI ĐẶT DRIVER NVIDIA
nvidia-smi
sudo apt install nvidia-driver-545

CÀI ĐẶT POSTMAN
tar -xzf postman-agent-0.4.17-linux-x64.tar.gz
sudo mkdir -p /opt/apps/
sudo mv Postman /opt/apps/
sudo ln -s /opt/apps/Postman/Postman /usr/local/bin/postman
sudo nano /usr/share/applications/postman.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/usr/local/bin/postman %U
Icon=/home/huymatec2003/WhiteSur-icon-theme/src/apps/scalable/postman.svg
Terminal=false
Type=Application
Categories=Development;

CÀI ĐẶT FLIPPER
https://github.com/facebook/flipper/releases/download/v0.236.0/Flipper-linux.zip
sudo mv ~/Downloads/flipper /opt/flipper
sudo nano /usr/share/applications/flipper.desktop
[Desktop Entry]
Name=Flipper
Comment=Platform for debugging mobile apps on iOS and Android.
Exec=/opt/flipper/flipper
Terminal=false
Type=Application
Icon=/home/huymatec2003/.icons/Cupertino-Ventura/apps/128/flipper.png

SETUP MÀU BÀN PHÍM
git clone https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module
cd "acer-predator-turbo-and-rgb-keyboard-linux-module"
chmod +x ./*.sh
sudo ./install.sh

Breath effect with Purple color(speed=4, brightness=100):
./facer_rgb.py -m 1 -s 4 -b 100 -cR 255 -cG 0 -cB 255

Neon effect(speed=3, brightness=100):
./facer_rgb.py -m 2 -s 3 -b 100

Wave effect(speed=5, brightness=100):
./facer_rgb.py -m 3 -s 5 -b 100

Shifting effect with Blue color (speed=5, brightness=100):
./facer_rgb.py -m 4 -s 5 -b 100 -cR 0 -cB 255 -cG 0

Zoom effect with Green color (speed=7, brightness=100):
./facer_rgb.py -m 5 -s 7 -b 100 -cR 0 -cB 0 -cG 255

Static waving (speed=0): ./facer_rgb.py -m 3 -s 0 -b 100

Static mode coloring (zone=1 => most left zone, color=blue):
./facer_rgb.py -m 0 -z 1 -cR 0 -cB 255 -cG 0

Static mode coloring (zone=4 => most right zone, color=purple) and save it as example:
./facer_rgb.py -m 0 -z 4 -cR 255 -cB 255 -cG 0

Load the previously saved profile: ./facer_rgb.py -load example

TẠO FILE Led_Start.sh ở Home sau đó thêm: 
cd /home/huymatec2003/Acer
chmod +x ./*.sh
sudo ./install.sh
./facer_rgb.py -m 3 -s 5 -b 100

TẠO FILE led-start.service và thêm lệnh
sudo nano /etc/systemd/system/led-start.service

[Unit]
Description=Run Led_Start.sh at startup
[Service]
ExecStart=/bin/fish /home/huymatec2003/Led_Start.sh
Type=simple
[Install]
WantedBy=default.target

TEST SERVICE COLORS KEYBOARD
sudo bash Led_Start.sh
sudo systemctl enable led-start
sudo systemctl start led-start

FAN CONTROL ACER 
git clone https://github.com/Jebaitedneko/Acer-Nitro-5-AN515-58-EC-Control-Linux
sudo bash nitrosense
ENA: [w]rite to ec
PWR: [q]uiet [d]efault [p]erformance
FAN: [a]uto  [c]ustom  [m]ax
DBG: [r]ead from ec
DBG: [e]nergy data from intel_rapl
DBG: [n]vidia-powerd restart

MENU FAN OPTIONS
Default Power with Auto Fan: sudo bash nitrosense da
Performance Power with Max Fan: sudo bash nitrosense pm
Performance Power with Custom Fan at 50%: sudo bash nitrosense pc 50
