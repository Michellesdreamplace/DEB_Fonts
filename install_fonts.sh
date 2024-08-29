#!/bin/bash
BENUTZER=$USER
HOMEVERZEICHNIS=$HOME
MYSHELL=$SHELL
echo "Hallo $BENUTZER"
echo "Dein Home-Verzeichnis: $HOMEVERZEICHNIS"
echo "Deine Shell: $MYSHELL"
echo "************************************************************"
echo "    installiere git (falls nicht vorhanden) ..."
echo "    ... um Repositories klonen zu können ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar (falls nicht vorhanden) ..."
echo "    ... um Dateien entpacken zu können ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    klone Schriftarten von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Fonts.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Fonts/
echo "************************************************************"
echo "    entpacke Schriftarten in globalen Freigabeordner ..."
echo " ..."
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Fonts/MDP_Fonts.tar.gz -C /usr/share/fonts/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Fonts
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Du findst die neuen Schriftarten im globalen Verzeichnis unter:"
echo "  /usr/share/fonts/"
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
