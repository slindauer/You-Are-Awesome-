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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You are awesome!"
        let greatMessage = "You are great!"
        let dabombMessage = "You are da bomb!"
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageViewer.image = UIImage(named: "image1")
            
        } else if messageLabel.text == greatMessage {
            messageLabel.text = dabombMessage
            imageViewer.image = UIImage(named: "image2")
            
        } else {
            messageLabel.text = awesomeMessage
            imageViewer.image = UIImage(named: "image0")
        }
        
    }
}

