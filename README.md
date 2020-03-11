<div align="center">
  <img src="https://raw.githubusercontent.com/phx-arts/Assets/master/GENERAL/PNG/Phoenix-Logo.png" width="250" height="250">
</div>

# PhoenixOS-Linux
The following installation guide is written for Ubuntu distros.

## Prerequisities
Before Moving to installation guide, please prepare your operating system by
running script that transforms Ubuntu visually to MacOS. PhoenixOS temporarily
uses some of it's features in order to provide better user experience

1. Install **xterm** with `sudo apt install xterm`
2. Download [this shell script](https://github.com/debugster/GnomeTweaks/blob/master/macUbuntu.sh)
3. Go into the script's directory and execute it `sh ./macUbuntu.sh` **Warning! Do not run the script as sudo**
4. You will be asked for a password. When promted, enter your password on xterm window.
5. Restart your computer (It's important)

Once you are done with this little ceremony you can happily proceed to instalation guide.

---

<div align="center">
  <img src="https://raw.githubusercontent.com/Ph0enixKM/PhoenixOS-Linux/master/desktop.png" width="200" heigth="200">
</div>

## Instalation guide

### Shell Theme
**PhxOS-Shell** Is not entirely written. Therefore it is recommended to use [XON Catalina](https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1NzE4MjMzNTkiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjI1OGVjZmQxMDM5NzJjY2JmNmE5ZTNhZWUxYjMyOTUxYWQyZmFmZjVmY2NkNWZmY2MyYzgxZjYyN2VjNzYyZDgwYWMzMzk0NjliMjhlZTJjOGRlZTJiZDUwMTk2OGY1NjMyMmJjNTE3MzliYmZkZWM4Y2ViNTY2MGNjYWIyYzY5IiwidCI6MTU4Mzk2MjY0Miwic3RmcCI6ImJlMTc1NDlmODU2YmY3YzFhYmNmN2QzZTE2ZTE5MzU1Iiwic3RpcCI6Ijc5LjE4Ni4yMzkuMjAxIn0.rMz-5Y-myDR1SSTOyuiNW4Qp5ZTcq-wQP1VJVAi93pY/XON.for.Dash.to.DOCK.tar.xz) theme
> Once downloaded put it into `~/.themes` unpacked

### Main theme
You can use theme **PhxOS-Theme** as the main Gnome theme.
> Once downloaded put into `~/.themes`

### Dash to Dock
It's the iconic void-black slick dock
The implementation may not be perfect since manual configuaration is needed,
however PhoenixOS won't be eventually set on top of Ubuntu environemnt, but rather
on a more stable and less messy ground.
> Once downloaded files inside the dash-to-dock directory replace with the files in the following path: 
> `~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com`
>
> Now go to **Tweaks > Extensions > Dash to dock > settings**
>
> - Set *screen position* to **bottom**
> - Set *icon size limit* to **32**
> - Set *Intelligent autohide* to **On**

### Wallpaper
You can set the PhoenixOS default wallpaper. File name of the wallpaper: **lava.jpg**
> Once downloaded right click and set as a wallpaper.

<br>
<div align="center">
  <img src="https://raw.githubusercontent.com/Ph0enixKM/PhoenixOS-Linux/master/lava.jpg" height="400">
</div>
