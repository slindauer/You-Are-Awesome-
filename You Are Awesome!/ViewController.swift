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
    
    var imageNumber = -1
    var messageNumber = -1
    let totalImages = 10
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // RANDOM IMAGE
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalImages-1)
        } while newImageNumber == imageNumber
        imageNumber = newImageNumber
        imageViewer.image = UIImage(named: "image\(imageNumber)")
        
        // RANDOM MESSAGE
        let messages = ["You are awesome!", "You are great!", "You are da bomb!", "You are fantastic!", "Greatest ever!"]
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while newMessageNumber == messageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        // PLAY SOUND
        if let sound = NSDataAsset(name: "sound0"){
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
}

