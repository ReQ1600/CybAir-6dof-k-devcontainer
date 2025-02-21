sudo apt install ros-humble-moveit -y &&\
sudo apt install ros-humble-rmw-cyclonedds-cpp -y &&\
echo "export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp" >> ~/.bashrc &&\
sudo rosdep init &&\
rosdep update &&\
sudo apt update &&\
sudo apt dist-upgrade &&\
sudo rosdep install --from-paths src --ignore-src -y -r &&\
sudo chown -R $(whoami) /home/ws/