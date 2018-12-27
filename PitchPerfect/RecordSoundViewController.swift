//
//  RecordSoundViewController.swift
//  PitchPerfect
//
//  Created by Chris Scheid on 9/14/17.
//  Copyright © 2017 Chris Scheid. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController, AVAudioRecorderDelegate {
    enum RecordingState { case recording, notRecording }
    
    var recordingState: RecordingState!
    
    var audioRecorder: AVAudioRecorder!
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        recordingState = RecordingState.notRecording
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
    }


    @IBAction func recordAudio(_ sender: AnyObject) {
        recordingState = RecordingState.recording
        
        configureUI();
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
        
    }

    @IBAction func stoprecording(_ sender: Any) {
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
        
        recordingState = RecordingState.notRecording
        configureUI();
        
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        // Check if recording was successful
        if (flag)
        {
           performSegue(withIdentifier: "stopRecordingSegue", sender: audioRecorder.url)
        }
        else {
            print("Error recording")
        }
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        print("ERROR: Recording error!")
        recordingState = RecordingState.notRecording
        configureUI();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "stopRecordingSegue")
        {
            // Get the VC
            let playSoundsVC = segue.destination as! PlaySoundsViewController
            let audioURL = sender as! URL
            playSoundsVC.recordedAudioURL = audioURL
        }
    }
    
    func configureUI(){
        if (recordingState == RecordingState.recording)
        {
            // recording
            recordingLabel.text = "Recording in progress"
            stopRecordingButton.isEnabled = true
            recordButton.isEnabled = false
        }
        else{
            // not recording
            recordingLabel.text = "Tap to record"
            recordButton.isEnabled = true
            stopRecordingButton.isEnabled = false
        }
    }
}

