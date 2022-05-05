#!/usr/local/bin/v run
import rand

home := environ()['HOME']
chdir('$home/Pictures/wallpapers') ?
files := ls('.') or { panic(err) }

random_index := rand.intn(files.len) ?
wallpaper := files[random_index]
execute('feh --bg-fill $wallpaper')
