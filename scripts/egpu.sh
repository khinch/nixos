#!/usr/bin/env bash
echo ""
date
echo ""
echo "****************************************"
echo "lspci | grep -Ei 'vga|3d|display'"
echo "****************************************"
echo ""
lspci | grep -Ei 'vga|3d|display'

echo ""
echo "******************************************"
echo "lspci -nnk | grep -A3 -Ei 'vga|3d|display'"
echo "******************************************"
echo ""
lspci -nnk | grep -A3 -Ei 'vga|3d|display'

echo ""
echo "*************************************************"
echo "glxinfo | grep -E 'OpenGL vendor|OpenGL renderer'"
echo "*************************************************"
echo ""
glxinfo | grep -E 'OpenGL vendor|OpenGL renderer'

echo ""
echo "*********************************************************"
echo "vulkaninfo | grep -E 'deviceName|driverName' | head -n 20"
echo "*********************************************************"
echo ""
vulkaninfo | grep -E 'deviceName|driverName' | head -n 20
