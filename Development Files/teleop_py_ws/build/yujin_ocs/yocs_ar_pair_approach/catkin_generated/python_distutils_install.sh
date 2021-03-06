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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/nvidia/teleop_py_ws/src/yujin_ocs/yocs_ar_pair_approach"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nvidia/teleop_py_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nvidia/teleop_py_ws/install/lib/python2.7/dist-packages:/home/nvidia/teleop_py_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nvidia/teleop_py_ws/build" \
    "/usr/bin/python" \
    "/home/nvidia/teleop_py_ws/src/yujin_ocs/yocs_ar_pair_approach/setup.py" \
    build --build-base "/home/nvidia/teleop_py_ws/build/yujin_ocs/yocs_ar_pair_approach" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/nvidia/teleop_py_ws/install" --install-scripts="/home/nvidia/teleop_py_ws/install/bin"
