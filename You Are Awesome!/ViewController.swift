//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Steven Lindauer on 7/17/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("😜 viewDidLoad() did indeed load.")
        messageLabel.text = "Startup complete!"
    }


    @IBAction func secondMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "2nd Message!"
        messageLabel.textColor = .red
        messageLabel.textAlignment = .right
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You are awesome!"
        messageLabel.textColor = .blue
        messageLabel.textAlignment = .left
    }
}

