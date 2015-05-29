# /bin/bash

#########################
# CONFIG PART - Edit this
#########################
coords="40.47601, -3.7126"
distance_miles="10"
gpx_filename="name.gpx"
path_to_gpx=~/Software/geotoad/gpx/$gpx_filename


#######################
# Do not edit this part
######################
if [ -s $path_to_gpx ]
    then
        echo "Removing $path_to_gpx..."
        rm $path_to_gpx
    fi
echo "geotoad.rb --delimiter='|' --distanceMax=$distance_miles --output=$path_to_gpx --queryType=location --notFoundByMe '$coords'"
geotoad.rb --delimiter='|' --distanceMax=$distance_miles --output=$path_to_gpx --queryType=location --notFoundByMe "$coords"
