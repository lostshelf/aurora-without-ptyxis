#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# dnf5 remove -y ptyxis

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

 bootc install to-filesystem --karg=ostree.prepare-root.composefs=0

dnf5 remove -y ptyxis

dnf5 install -y neovim konsole plasma-firewall cutter-re rizin-devel kcalc filelight libreoffice thunderbird 

# Add flatpak remote before installing
# flatpak install -y com.spotify.Client org.librepcb.LibrePCB org.librecad.LibreCAD org.kicad.KiCad org.prismlauncher.PrismLauncher