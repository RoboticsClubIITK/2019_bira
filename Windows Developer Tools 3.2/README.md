# Windows Developer Tools by NeuroSky

These can be found [here](https://store.neurosky.com/products/pc-developer-tools).

## Stream SDK

Stream SDK is used to stream raw data from the device. You can build your own apps using this SDK.  
For sample take a look at look at sample application provided in `Windows Developer Tools 3.2\Stream SDK for PC\Sample Project\x64\thinkgear_testapp`.

## EEG Algo SDK

EEG Algo SDK is used to design algorithms for EEG data collected from the device. It provides samples such as Eye Blink Detection, Attention, Meditation, etc.  
Eye Blink detection works pretty well.

## Building Sample Applications

To build a sample application:

1. Install Microsoft Visual Studio
2. Open `.sln` file in MSVC
3. Build and Run the project in MSVC

## Troubleshooting

1. Sometimes there is an error for missing `dll` file. For that put the missing `dll` file in the same directory as `.exe` file of the application.

### **These softwares are owned by [NeuroSky](http://neurosky.com/)**.