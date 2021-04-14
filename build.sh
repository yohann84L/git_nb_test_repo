echo "Building !!"


TMP_FOLDER=".tmp_engine/"
mkdir "$TMP_FOLDER"
cp -R src "$TMP_FOLDER"

rm src/test.py

python -m pigar -p prod-requirements.txt -P src

# Copy back files
cp -R "$TMP_FOLDER/src/" src/
# Remove temp folder
rm -rf "$TMP_FOLDER"