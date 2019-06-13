# 2019_bira

This repository is for [Robotics Club, IIT Kanpur](http://students.iitk.ac.in/roboclub/) Summer'19 project Brain Interfacing Robotic Arm.

We are using [BrainSense](https://www.pantechsolutions.net/brainsense-bci) device by Pantech Solutions.

## Team

#### Mentors

1. Madhur Deep Jain (BCI)
2. Abhay Varshney (Robotic Arm Design)

#### Members

1. Anmol Gupta
2. Bhavan Soni
3. Dipak Miglani
4. Jyotiprakash Das Karmakar
5. Kuldeep Kumar
6. Suman Singha

## BrainSense

To use the device (in Windows):

1. Turn on the device
2. Add new bluetooth device from bluetooth settings.
3. In More Bluetooth options, check for COM ports.
4. Install ThinkGear Connector using `TGC-Setup.exe` in `bci\`.

### `get_data.m`

This MATLAB script can be used to stream data from the device.

## Troubleshooting

1. Check baud rate for the device's COM port in Device Manager.

### **These software are originally owned by [NeuroSky](http://neurosky.com/). We have modified them for our use.**

For further doubts, kindly contact [Madhur Deep Jain](mailto:madhurdeepjain@gmail.com).