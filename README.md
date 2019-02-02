# Fun app to make a recording an play it back with a different pitch

## Overview
This app let's you make a recording and play it back in six fun pitch variations.


## Implementation
* The app uses two view controllers: A MapViewController for the map view and a PhotoAlbumViewController for the photo view
* The maps are rendered using the standard iOS MapKit.
* Entities like MapLocation, Pin, Photo are persisted by using the iOS CoreData library.
* The photos are fetched in the PhotoAlbumViewController by passing the location geo coordinates to the Flickr REST API.

## Usage
1. When the app is started, you can use the mic button to start a recording
2. Once you are done, use the stop button to stop recording
3. On the pitch selector page, you can use one of the icons to play back the recording with a different pitch.
4. Use the stop button to stop the playback.

## Screenshots
![Perfect Pitch 1](screenshots/perfect-pitch-ss-1.png?raw=true "Perfect Pitch  1")

![Perfect Pitch 2](screenshots/perfect-pitch-ss-2.png?raw=true "Perfect Pitch  2")
