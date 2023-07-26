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

echo_and_run cd "/home/julius/TAU-Hand-Control/src/openhand_node"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/julius/TAU-Hand-Control/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/julius/TAU-Hand-Control/install/lib/python2.7/dist-packages:/home/julius/TAU-Hand-Control/build/openhand_node/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/julius/TAU-Hand-Control/build/openhand_node" \
    "/usr/bin/python2" \
    "/home/julius/TAU-Hand-Control/src/openhand_node/setup.py" \
     \
    build --build-base "/home/julius/TAU-Hand-Control/build/openhand_node" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/julius/TAU-Hand-Control/install" --install-scripts="/home/julius/TAU-Hand-Control/install/bin"
