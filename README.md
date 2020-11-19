# olympus-camera-dl

cli tool that download images from olympus camera using wifi.

## Installation

using rubygems

```
gem install olympus-camera-dl
```

## Usage

```
$ olympus-camera-dl -h
Usage: olympus-camela-dl [options] ./photo-download-dir/
        --delete                     delete images on camera after download
    -c, --card-slot [NUM]            set SD card slot 1 or 2
    -e, --ext [EXTNAME]              set download ext name, example: -e "jpg" or -e "oft"
    -s, --skip                       skip download image when image exists
    -p, --power-off                  camera power off when finished
```

```
$ olympus-camera-dl
ERROR: Can't connect to camera

## connect to camera's wifi

$ olympus-camera-dl -c 2 --delete --power-off /home/pi/photos/E-M1MarkII/
Connected: E-M1MarkII
Target camera 11 images found
[1/11] DOWNLOAD: /DCIM/101OLYMP/PB202134.JPG
[1/11] WRITE: /home/pi/photos/E-M1MarkII/PB202134.JPG (4,517,267 byte)
[1/11] DELETED: /DCIM/101OLYMP/PB202134.JPG on camera
[2/11] DOWNLOAD: /DCIM/101OLYMP/PB202135.JPG
[2/11] WRITE: /home/pi/photos/E-M1MarkII/PB202135.JPG (4,380,822 byte)
[2/11] DELETED: /DCIM/101OLYMP/PB202135.JPG on camera
...
[11/11] DOWNLOAD: /DCIM/101OLYMP/PB202144.JPG
[11/11] WRITE: /home/pi/photos/E-M1MarkII/PB202144.JPG (4,466,991 byte)
[11/11] DELETED: /DCIM/101OLYMP/PB202144.JPG on camera
Power off
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
