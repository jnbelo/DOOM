# DOOM 

## Running on linux with scaled window

Execute Xephyr in order to be able to have a 256 color X11 display

```
Xephyr -once -ac -screen 320x200x8 :2
```

Execute DOOM in the new display

```
DISPLAY=:2 ./linuxxdoom
```

Execute x11vnc to create a vnc server for the display. Add -8to24 flag to convert depth 8 PseudoColor to depth 24 TrueColor.

```
x11vnc -localhost -8to24 -display :2
```

Use a vnc viewer ot access the vnc server. This particular viewer is able to scale the screen to fullscreen via the top menu bar.
```
gvncviewer localhost
```