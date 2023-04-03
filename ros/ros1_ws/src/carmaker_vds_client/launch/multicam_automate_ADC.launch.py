import os

vds_port_arr = []
vds_config_arr = []
camera_name_arr = []
camera_frame_arr = []
camera_name_rqt_arr = []
startup_delay_arr = []
param_trans_rot_arr = []
width_arr = []
height_arr = []
fov_deg_arr = []
start_rqt_image_view_arr = []

file_name = "./ros/ros1_ws/src/carmaker_vds_client/launch/CameraConfig.txt"
f = open(file_name, 'r')
lines = f.readlines()

nSensors = int(lines[0][lines[0].find('=')+1:lines[0].find('\n')])
# print(nSensors)

file_name2 = "./Data/Config/CMRosIFParameters"
f2 = open(file_name2, 'r')
lines2 = f2.readlines()

for line2 in lines2:
    if "Cfg.Name" in line2:
        node_name = str(line2[line2.find('=')+1:line2.find('\n')])
        node_name = node_name.lstrip()
        node_name = node_name.rstrip()
#print(node_name)

for i in range(nSensors):
    
    tmp_camera_name = lines[1+6*i+0][lines[1+6*i+0].find('=')+1:lines[1+6*i+0].find('\n')]
    camera_name_arr.append(tmp_camera_name)
    camera_frame_arr.append(tmp_camera_name)
    camera_name_rqt_arr.append(tmp_camera_name)
    
    tmp_vds_port = lines[1+6*i+1][lines[1+6*i+1].find('=')+1:lines[1+6*i+1].find('\n')]
    vds_port_arr.append(tmp_vds_port)

    tmp_param_trans_rot = lines[1+6*i+2][lines[1+6*i+2].find('=')+1:lines[1+6*i+2].find('\n')]
    tmp_param_trans_rot = tmp_param_trans_rot.split(',')
    tmp_param_trans_rot = [float(x) for x in tmp_param_trans_rot]
    param_trans_rot_arr.append(str(tmp_param_trans_rot))
    
    tmp_width = lines[1+6*i+3][lines[1+6*i+3].find('=')+1:lines[1+6*i+3].find('\n')]
    width_arr.append(tmp_width)
    
    tmp_height = lines[1+6*i+4][lines[1+6*i+4].find('=')+1:lines[1+6*i+4].find('\n')]
    height_arr.append(tmp_height)

    tmp_fov_deg = lines[1+6*i+5][lines[1+6*i+5].find('=')+1:lines[1+6*i+5].find('\n')]
    fov_deg_arr.append(tmp_fov_deg)

print(camera_name_arr)
print(camera_name_rqt_arr)
print(vds_port_arr)
print(param_trans_rot_arr)
print(width_arr)
print(height_arr)
print(fov_deg_arr)

f.close()
f2.close()

print("----------------------------------------------------------------------------")
for i in range(nSensors):
    arr = ("roslaunch carmaker_vds_client carmaker_vds_client.launch"
                + " camera_name:=" + camera_name_arr[i]
                + " camera_frame:=" + camera_frame_arr[i]
                + " vds_port:=" + vds_port_arr[i]
                + " param_trans_rot:=" + "'" + param_trans_rot_arr[i] + "'"
                + " width:=" + width_arr[i]
                + " height:=" + height_arr[i]
                + " fov_deg:=" + fov_deg_arr[i]
                + " start_movie:=" + "false"
                + " start_rqt_image_view:=" + "true"
                + " camera_name_rqt:=" + camera_name_rqt_arr[i]
    )
    
    if i != max(range(nSensors)):
        arr += " &"
    
    print(arr)
    print("----------------------------------------------------------------------------")
    os.system(arr)

os.system("echo ----------------------------------------------------------------------------")
