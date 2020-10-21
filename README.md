# DOOM

## Required libs
- libc6-dev:i386
- libx11-dev:i386
- libxext-dev:i386
- gcc-[version]-multilib
- alsa-oss (for sound)

## Running on linux with scaled window

Execute Xephyr in order to be able to have a 256 color X11 display

```
Xephyr -once -ac -screen 320x200x8 :1
```

Execute DOOM in the new display. Using `aoss` will enable sound in newer systems, as it is a compatibility library that allows aplications written with OSS to work with ALSA. 

```
DISPLAY=:1 aoss ./linuxxdoom
```

Execute x11vnc to create a vnc server for the display. Add -8to24 flag to convert depth 8 PseudoColor to depth 24 TrueColor.

```
x11vnc -localhost -8to24 -display :2
```

Use a vnc viewer ot access the vnc server. This particular viewer is able to scale the screen to fullscreen via the top menu bar.
```
gvncviewer localhost
```