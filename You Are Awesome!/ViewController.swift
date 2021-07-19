//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Steven Lindauer on 7/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageViewer: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // RANDOM IMAGE
        imageViewer.image = UIImage(named: "image\(Int.random(in: 0...9))")
        // CYCLE THROUGH IMAGES
        //        //        let imageName = "image" + String(imageNumber)
        //        let imageName = "image\(imageNumber)"
        //        imageViewer.image = UIImage(named: imageName)
        //        imageNumber += 1
        //        if(imageNumber > 9){
        //            imageNumber = 0
        //        }
        
        
        let messages = ["You are awesome!", "You are great!", "You are da bomb!", "You are fantastic!", "Greatest ever!"]
        // RANDOM IMAGE
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        // CYCLE THROUGH MESSAGES
        //        messageLabel.text = messages[messageNumber]
        //        messageNumber += 1
        //        if messageNumber == messages.count {
        //            messageNumber = 0
        //        }
        
        //        let awesomeMessage = "You are awesome!"
        //        let greatMessage = "You are great!"
        //        let dabombMessage = "You are da bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageViewer.image = UIImage(named: "image1")
        //
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = dabombMessage
        //            imageViewer.image = UIImage(named: "image2")
        //
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageViewer.image = UIImage(named: "image0")
        //        }
        
    }
}

