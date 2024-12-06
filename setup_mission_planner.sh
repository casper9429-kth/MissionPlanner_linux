#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y mono-complete unzip gdal-bin libgdal-dev libgdiplus libc6-dev

# Set environment variables
echo 'export GDAL_DATA=/usr/share/gdal' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/lib' >> ~/.bashrc
echo 'export MONO_MWF_USE_CAIRO_BACKEND=1' >> ~/.bashrc
source ~/.bashrc

# Download and unzip Mission Planner
wget https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-latest.zip
mkdir -p MissionPlanner
unzip MissionPlanner-latest.zip -d MissionPlanner

# Ensure libgdiplus is correctly linked
sudo ln -s /usr/lib/libgdiplus.so /usr/lib/mono/4.5/libgdiplus.so

# Create a desktop shortcut
cat <<EOF > ~/.local/share/applications/mission-planner.desktop
[Desktop Entry]
Name=Mission Planner
Comment=Ground Control Station for ArduPilot
Exec=mono $(pwd)/MissionPlanner/MissionPlanner.exe
Icon=$(pwd)/MissionPlanner/mpdesktop150.png
Terminal=false
Type=Application
Categories=Utility;
EOF

# Make the .desktop file executable
chmod +x ~/.local/share/applications/mission-planner.desktop
rm -rf $(pwd)/MissionPlanner-latest.zip
echo "Setup complete. You can now find Mission Planner in your application menu."