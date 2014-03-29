#!/usr/bin/env ruby

gphoto2 = "gphoto2"
usbid   = "--port=usb:253,003"
folder  = "--folder=/store_00010001/DCIM/100NCD50"

commands = []

commands << "#{gphoto2} #{usbid} #{folder} --delete-all-files"
commands << "#{gphoto2} #{usbid} #{folder} --capture-image"
commands << "#{gphoto2} #{usbid} #{folder} --get-file=1 --filename='%m-%d-%Y_%H.%M.%S.nef' --hook-script=./hook.rb"

commands.each{|command|
  $stderr.puts command
  system command
}
