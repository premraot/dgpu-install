stat -c "%G" /dev/dri/render*
groups ${USER}

sudo dnf install hwinfo
hwinfo --display

export DISPLAY=:0.0
vainfo

sudo dnf install clinfo
clinfo

