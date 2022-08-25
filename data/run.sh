#!/bin/sh
if [ ! -f "ran.txt" ]; then
    sed -i "s/{secret}/$VELOCITY_SECRET/" paper.yml
    echo "B" > ran.txt
fi

java -Xmx4G -jar paper.jar
