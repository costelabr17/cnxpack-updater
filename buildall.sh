#/bin/bash
clear
echo ""
echo "****************************************************************"
echo "*                        SCRIPT STARTED                        *"
echo "****************************************************************"
echo ""
echo "******************* Updating from GitHub (DISCARDING ALL LOCAL CHANGES)..."
git fetch --all
git reset --hard origin/main
git pull origin main
echo ""

echo "******************* Building cnxpack-forwarder..."
cd cnxpack-forwarder
make
cd ..
echo ""

#echo "******************* Building cnxpack-rcm..."
#cd cnxpack-rcm
#make
#cd ..
#echo ""

echo "******************* Building cnxpack-updater..."
make
echo ""

echo "******************* Creating the release ZIP..."
mkdir switch
mkdir ./switch/cnxpack-updater
cp cnxpack-updater.nro ./switch/cnxpack-updater
zip -r -9 ./cnxpack-updater.zip ./switch/
rm -rf switch

echo ""

echo "****************************************************************"
echo "*                       SCRIPT TERMINATED                      *"
echo "****************************************************************"
