sudo  pacman-mirrors -c China -m rank

sudo pacman-optimize && sync

echo -e "\n[archlinuxcn]\nSigLevel = TrustAll\nServer = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch\n\n[antergos]\nSigLevel = TrustAll\nServer = https://mirrors.tuna.tsinghua.edu.cn/antergos/\$repo/\$arch\n"|sudo tee -a /etc/pacman.conf

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm archlinuxcn-keyring antergos-keyring

sudo pacman -S --noconfirm fcitx-im fcitx-configtool fcitx-sogoupinyin fcitx-im kcm-fcitx fcitx-sogoupinyin

sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx">>~/.xprofile

sudo pacman -S --noconfirm vim netease-cloud-music google-chrome sublime-text-dev-imfix uget aria2 shadowsocks-qt5
