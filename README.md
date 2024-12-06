# Mission Planner for Linux

This repository contains scripts to install and run Mission Planner (ArduPilot's Ground Control Station) on Linux using Mono.

## ⚠️ Warning

This installation is **experimental**. Please note the following:
- Use with caution and at your own risk
- Avoid using it for firmware updates
- Some features may not work as expected
- This is not an official ArduPilot installation method

## Prerequisites

- Ubuntu/Debian-based Linux distribution (tested on Ubuntu 22.04)
- Internet connection for downloading packages
- Sudo privileges

## Installation

1. Clone this repository:
2. Run the installation script:
```
chmod +x setup_mission_planner.sh
./setup_mission_planner.sh
```

## Running Mission Planner
Mission Planner should appear in your applications menu. If not, you can run it from the terminal:
```
mono MissionPlanner.exe
```

## Uninstalling Mission Planner
To uninstall Mission Planner, run the uninstallation script:
```
chmod +x uninstall_mission_planner.sh
./uninstall_mission_planner.sh
```

