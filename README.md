# Fun app to make a recording an play it back with a different pitch

## Overview
This app let's you make a recording and play it back in six fun pitch variations.

## Implementation
* The app uses two view controllers: The RecordSoundViewController for recording and the PlaySoundViewController to play back the recording.
* The RecordSoundViewController uses the AVAudioRecorder and AVAudioSession classes of the AVFoundation library.
* The PlaySoundViewController uses the AVAudioEngine and AVAudioPlayerNode classes of the AVFoundation library. 
* In order to vary the pitch, different combination values for AVAudioUnitTimePitch, AVAudioUnitDistortion and AVAudioUnitReverb are used and attached to the AVAudioEngine.

## Usage
1. When the app is started, you can use the mic button to start a recording.
2. Once you are done, use the stop button to stop recording
3. On the pitch selector page, you can use one of the icons to play back the recording with a different pitch.
4. Use the stop button to stop the playback.

## Screenshots
![Pitch Perfect 1](screenshots/pitch-perfect-ss-1.png?raw=true "Pitch Perfect  1")

![Pitch Perfect 2](screenshots/pitch-perfect-ss-2.png?raw=true "Pitch Perfect  2")
