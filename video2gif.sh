# David Wang 2018.01.22 in CUHK,Shenzhen
# need kazam:installed in ubuntu sofeware,get video
#      mplayer:sudo apt-get install mplayer,get jpegs
#      imagemagic:sudo apt-get install imagemagic,get gif

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# this file should be with video file
# input:video file name without '.mp4'
# output:gif file
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
filename=$1  
sudo rm -rf ./jpegs/*
mplayer -ao null ${filename}.mp4 -vo jpeg:outdir=./jpegs
convert ./jpegs/*.jpg -resize 45% ./out.gif
sudo rm -rf ./jpegs/*
