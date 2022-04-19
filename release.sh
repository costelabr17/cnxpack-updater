#/bin/bash
echo ""
echo "******************* Creating the release ZIP..."
mkdir switch
mkdir ./switch/cnxpack-updater
cp cnxpack-updater.nro ./switch/cnxpack-updater
zip -r -9 ./cnxpack-updater.zip ./switch/
rm -rf switch

echo ""
echo "******************* Done!"