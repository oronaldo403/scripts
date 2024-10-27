#!/bin/bash
# Meu script de pós instalação do manjaro linux e distros baseadas em arch 
# Atualiza a lista de pacotes e instala as atualizações
sudo pacman -Syyu --noconfirm

# Atualiza os espelhos do pacman
sudo pacman-mirrors --fasttrack

# Habilita e inicia o fstrim.timer
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Instala pacotes
sudo pacman -S --noconfirm pavucontrol ufw gufw base-devel jdk-openjdk openssl ctags ncurses ack the_silver_searcher fontconfig libmagick imagemagick git gvim curl keepassxc neofetch htop gedit terminator

# Habilita e inicia o UFW
sudo ufw enable
sudo systemctl enable ufw

# Instala o Docker e o habilita
sudo pacman -S --noconfirm docker
sudo systemctl start docker
sudo systemctl enable docker

# Adiciona o usuário atual ao grupo docker
sudo usermod -aG docker $USER

echo "Configuração concluída."
echo "Reinicie o terminal!"
echo "TKS"
