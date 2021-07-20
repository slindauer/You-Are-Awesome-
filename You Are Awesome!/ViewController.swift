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
        var newImage = UIImage(named: "image\(Int.random(in: 0...9))")
        while newImage == imageViewer.image {
            newImage = UIImage(named: "image\(Int.random(in: 0...9))")
        }
        imageViewer.image = newImage
        
        // RANDOM MESSAGE
        let messages = ["You are awesome!", "You are great!", "You are da bomb!", "You are fantastic!", "Greatest ever!"]
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while messageLabel.text == newMessage {
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
        
    }
}

