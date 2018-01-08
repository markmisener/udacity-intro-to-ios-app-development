//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Mark Misener on 1/7/18.
//  Copyright © 2018 Mark Misener. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RecordAudio(_ sender: Any) {
        print("record button was pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    @IBAction func StopRecording(_ sender: Any) {
        print("stop recording button was pressed")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to Record"
    }
    
}

