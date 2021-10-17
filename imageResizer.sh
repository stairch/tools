# start the script on Linux in the terminal with the command:
# sh imageResizer.sh ~/myStairImages/
echo "this script resizes images so they are less than 2500 pixel wide or high"
echo "first parameter must be the image folder path. Can't end with a '/'"
echo "the formatted images are in the new created subfolder 'formatted' from the original image folder."
echo "path: $1"

counter=0
mkdir "$1/formatted"
for entry in "$1"/*
do
  echo "image: $entry"
  new_image_name="partyImage$counter.jpg"
  counter=$((counter+1))
  echo $new_image_name
  new_image_path="$1/formatted/"$new_image_name
  echo $new_image_path
  convert -resize 35% $entry $new_image_path
done
