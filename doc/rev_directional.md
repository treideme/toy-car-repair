# Reverse Engineering the Directional Controller

This module seems to take care of the directional control of the
car. 

![Directional Controller](img/directional_controller.jpg)

It has three buttons. The center button disables directional
control. The front and the back button set the direction.

There are two LEDs next to the buttons that indicate the direction.

The board is supplied through J1. The pinout, starting from the J1
marking seems to be as follows.

| Pin # | Signal | Level | Cable Color
|-------|--------|-------|-------------
| 1     | GND    | 0 V   | Black
| 2     | Power  | 5 V   | White
| 3     | Backward | 0 when off, around 2.6V when on | Yellow
| 4     | Forward | 0 when off, around 2.6V when on | Green

----
Back to [Index](INDEX.md)
