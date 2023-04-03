#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/traffic_sign_detector"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/install/lib/python3/dist-packages:/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build" \
    "/usr/bin/python3" \
    "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/src/traffic_sign_detector/setup.py" \
     \
    build --build-base "/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/build/traffic_sign_detector" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/install" --install-scripts="/home/ave/install_files/HMC_AV_Challenge_2023_CM_11_ver1.1/ros/ros1_ws/install/bin"
