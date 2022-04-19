#/bin/bash
echo ""
echo "******************* Creating the release ZIP..."
mkdir switch
mkdir ./switch/cnx-updater
cp cnx-updater.nro ./switch/cnx-updater
zip -r -9 ./cnxpack-updater.zip ./switch/
rm -rf switch

echo ""
echo "******************* Done!"