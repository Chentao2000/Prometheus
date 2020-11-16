##动捕集群启动脚本
gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch prometheus_experiment px4_uav1.launch; exec bash"' \
--tab -e 'bash -c "sleep 6; roslaunch prometheus_experiment prometheus_mocap_formation_control.launch; exec bash"' \
--tab -e 'bash -c "sleep 7; roslaunch prometheus_experiment prometheus_mocap_formation_change.launch; exec bash"' \
--tab -e 'bash -c "sleep 7; roslaunch prometheus_experiment prometheus_mocap_formation_setmode.launch; exec bash"' \
--tab -e 'bash -c "sleep 8; rosrun prometheus_mission mocap_formation_move; exec bash"' \
--tab -e 'bash -c "sleep 9; roslaunch vrpn_client_ros sample.launch; exec bash"' \
--tab -e 'bash -c "sleep 10; rosrun prometheus_mission mocap_formation_getpose; exec bash"' \


