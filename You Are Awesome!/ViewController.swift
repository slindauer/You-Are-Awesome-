//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Steven Lindauer on 7/17/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalImages = 10
    let totalSounds = 6
    var soundAllowed = true
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("⛔️ ERROR: \(error.localizedDescription) could not initialize audioPlayer")
            }
        } else {
            print("⛔️ ERROR: could not load sound file")
        }
    }
    
    func uniqueInt(oldInt: Int, minVal: Int, maxVal: Int) -> Int {
        var newInt: Int
        repeat {
            newInt = Int.random(in: minVal...maxVal)
        } while newInt == oldInt
        return newInt
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // RANDOM IMAGE
        imageNumber = uniqueInt(oldInt: imageNumber, minVal: 0, maxVal: totalImages-1)
        imageViewer.image = UIImage(named: "image\(imageNumber)")
        
        // RANDOM MESSAGE
        let messages = ["You are awesome!", "You are great!", "You are da bomb!", "You are fantastic!", "Greatest ever!"]
        messageNumber = uniqueInt(oldInt: messageNumber, minVal: 0, maxVal: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        // PLAY SOUND
        soundNumber = uniqueInt(oldInt: soundNumber, minVal: 0, maxVal: totalSounds-1)
        if soundAllowed {
            playSound(soundName: "sound\(soundNumber)")
        }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        soundAllowed = playSoundSwitch.isOn
        if !soundAllowed && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    
}

