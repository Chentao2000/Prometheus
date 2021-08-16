gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 3; roslaunch prometheus_gazebo sitl_ego_map4.launch; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch prometheus_gazebo sitl_ego_px4_uav1.launch; exec bash"' \
--tab -e 'bash -c "sleep 10; roslaunch prometheus_gazebo sitl_ego_planner_uav1.launch; exec bash"' \
--tab -e 'bash -c "sleep 15; roslaunch prometheus_gazebo sitl_ego_station.launch; exec bash"' \
