#/bin/bash
clear
echo ""
echo "****************************************************************"
echo "*                        SCRIPT STARTED                        *"
echo "****************************************************************"
echo ""
echo "******************* Cleaning environment..."
make clean

echo "cleaning cnxpack-forwarder..."
cd cnxpack-forwarder
rm -rf build
rm cnxpack-forwarder.elf
rm cnxpack-forwarder.nacp
rm cnxpack-forwarder.nro
cd ..

echo "cleaning cnxpack-rcm..."
cd cnxpack-rcm
rm -rf build
rm -rf output
cd ..

echo "finishing..."
rm -rf cnxpack-updater.*


echo ""
echo "****************************************************************"
echo "*                       SCRIPT TERMINATED                      *"
echo "****************************************************************"
