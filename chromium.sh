#!/bin/bash
#Установка Chromium
case `uname -v` in 
  *"16."*"buntu"*) 
    case `uname -m` in
       i[3456789]86|x86|i86pc) /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-codecs-ffmpeg-extra_*-0ubuntu0.16.*_i386.deb && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser_*-0ubuntu0.16.*_i386.deb ;;
       x86_64|amd64|AMD64)     /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-codecs-ffmpeg-extra_*-0ubuntu0.16.*_amd64.deb && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser_*-0ubuntu0.16.*_amd64.deb ;;
       *)              exit ;;
    esac && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser-l10n_*-0ubuntu0.16.*_all.deb && sudo cp -f /usr/share/applications/chromium-browser.desktop "/home/techman/Рабочий стол/" && sudo chmod 775 "/home/techman/Рабочий стол/chromium-browser.desktop" && /usr/bin/sudo /usr/sbin/useradd -m -p 12QwMGL8xyV0U FinCon && sudo mkdir -p "/home/FinCon/Рабочий стол/" && sudo chown -R FinCon:FinCon "/home/FinCon/Рабочий стол/" && sudo cp -f /usr/share/applications/chromium-browser.desktop "/home/FinCon/Рабочий стол/" && sudo chmod 757 "/home/FinCon/Рабочий стол/chromium-browser.desktop" ;;
  *"20."*"buntu"*)
    case `uname -m` in
       i[3456789]86|x86|i86pc) /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-codecs-ffmpeg-extra_*-0ubuntu0.20.*_i386.deb && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser_*-0ubuntu0.20.*_i386.deb ;;
       x86_64|amd64|AMD64)     /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-codecs-ffmpeg-extra_*-0ubuntu0.20.*_amd64.deb && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser_*-0ubuntu0.20.*_amd64.deb ;;
       *)              exit ;;
    esac && /usr/bin/sudo /usr/bin/dpkg -i --force-depends /home/techman/EUBANK/chromium/chromium-browser-l10n_*-0ubuntu0.20.*_all.deb && sudo cp -f /usr/share/applications/chromium-browser.desktop "/home/techman/Рабочий стол/" && sudo chown -R techman:techman "/home/techman/Рабочий стол/chromium-browser.desktop" && sudo chmod 775 "/home/techman/Рабочий стол/chromium-browser.desktop" && dbus-launch gio set "/home/techman/Рабочий стол/chromium-browser.desktop" "metadata::trusted" yes && /usr/bin/sudo /usr/sbin/useradd -m -p 12QwMGL8xyV0U FinCon && sudo mkdir -p "/home/FinCon/Рабочий стол/" && sudo cp -f /usr/share/applications/chromium-browser.desktop "/home/FinCon/Рабочий стол/" && sudo chown -R FinCon:FinCon "/home/FinCon/Рабочий стол/chromium-browser.desktop" && sudo chmod 757 "/home/FinCon/Рабочий стол/chromium-browser.desktop" && sudo -Hu FinCon dbus-launch gio set "/home/FinCon/Рабочий стол/chromium-browser.desktop" "metadata::trusted" yes ;;
  *) exit ;;
esac && /usr/bin/sudo /usr/bin/apt-get --force-yes -y -f install && /usr/bin/sudo /usr/bin/apt-mark hold chromium-browser;

