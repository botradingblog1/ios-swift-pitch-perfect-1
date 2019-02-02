# Fun app to make a recording an play it back with a different pitch

## Overview
This app let's you make a recording and play it back in six fun pitch variations.

## Getting Started
Open the .xcodeproject file in a recent version of XCode. Then clean, build and run on a device or emulator.

## Prerequisites
Apple Mac OSX laptop, XCode 8+

## Building
1. Double-click on the .xcodeproj or open the project from within XCode
2. In XCode IDE, select Produce / Clean and then Build from the top menu
3. Use the 'Play' (>) button to launch the app on a device or emulator

## Installing & Deployment
1. The program can be run immediately on an XCode simulator. 
2. In order to run the program on an actual Apple device, an Apple developer membership and a provisioning profile for the device is needed.

## Usage
1. When the app is started, you can use the mic button to start a recording.
2. Once you are done, use the stop button to stop recording.
3. On the pitch selector page, you can use one of the icons to play back the recording with a different pitch.
4. Use the stop button to stop the playback.

## Implementation
* The app uses two view controllers: The RecordSoundViewController for recording and the PlaySoundViewController to play back the recording.
* The RecordSoundViewController uses the AVAudioRecorder and AVAudioSession classes of the AVFoundation library.
* The PlaySoundViewController uses the AVAudioEngine and AVAudioPlayerNode classes of the AVFoundation library. 
* In order to vary the pitch, different combination values for AVAudioUnitTimePitch, AVAudioUnitDistortion and AVAudioUnitReverb are used and attached to the AVAudioEngine.

## Versioning
Version 1.0

## Authors
Christian Scheid - (https://justmobiledev.com)[https://justmobiledev.com]

## License
This project is licensed under the MIT License - see the LICENSE.md file for details

## Screenshots
![Pitch Perfect 1](screenshots/pitch-perfect-ss-1.png?raw=true "Pitch Perfect  1")

![Pitch Perfect 2](screenshots/pitch-perfect-ss-2.png?raw=true "Pitch Perfect  2")
