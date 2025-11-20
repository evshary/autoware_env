# Autoware Environment

Easily create an environment to try Autoware.

## Usage

* Enter the Autoware container
  * It will initialize the container if it doesn't exist.

```bash
./run_container.sh
```

* Download the map first (Only needed for the first time)

```bash
gdown -O ~/autoware_map/ 'https://docs.google.com/uc?export=download&id=1499_nsbUbIeturZaDj7jhUownh5fvXHd'
unzip -d ~/autoware_map ~/autoware_map/sample-map-planning.zip
```

* Run the planning simulator

```bash
source /opt/autoware/setup.zsh
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
ros2 launch autoware_launch planning_simulator.launch.xml map_path:=$HOME/autoware_map/sample-map-planning vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit
```

## For developers

* Please use `pre-commit` to align the coding style

```bash
sudo apt install shellcheck pipx
pipx install pre-commit
pre-commit install --install-hooks
```
