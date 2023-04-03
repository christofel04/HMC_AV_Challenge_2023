#run this file after CM "pause" state

cd "$(dirname "$0")" && pwd

source ./ros/ros1_ws/devel/setup.bash

python3 ./ros/ros1_ws/src/carmaker_vds_client/launch/multicam_automate_ADC.launch.py 
