#!/bin/bash

# Remove Mission Planner directory
rm -rf $(pwd)/MissionPlanner

# Remove the desktop shortcut
rm ~/.local/share/applications/mission-planner.desktop

# Remove environment variables from .bashrc
sed -i '/export GDAL_DATA=\/usr\/share\/gdal/d' ~/.bashrc
sed -i '/export LD_LIBRARY_PATH=\/usr\/lib/d' ~/.bashrc
sed -i '/export MONO_MWF_USE_CAIRO_BACKEND=1/d' ~/.bashrc

# Remove symlink for libgdiplus
sudo rm /usr/lib/mono/4.5/libgdiplus.so
echo "Uninstallation complete. Mission Planner has been removed."