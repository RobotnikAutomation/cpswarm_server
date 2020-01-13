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

echo_and_run cd "/home/miguel/ws/cpswarm_server/src/rcomponent"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/miguel/ws/cpswarm_server/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/miguel/ws/cpswarm_server/install/lib/python2.7/dist-packages:/home/miguel/ws/cpswarm_server/build/rcomponent/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/miguel/ws/cpswarm_server/build/rcomponent" \
    "/usr/bin/python2" \
    "/home/miguel/ws/cpswarm_server/src/rcomponent/setup.py" \
    build --build-base "/home/miguel/ws/cpswarm_server/build/rcomponent" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/miguel/ws/cpswarm_server/install" --install-scripts="/home/miguel/ws/cpswarm_server/install/bin"
