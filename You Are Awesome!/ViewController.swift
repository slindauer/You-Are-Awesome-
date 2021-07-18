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
        messageLabel.text = "Startup complete!"
    }

    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You are awesome!"
        imageViewer.image = UIImage(named: "image0")
    }
}

