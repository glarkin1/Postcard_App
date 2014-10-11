//
//  ViewController.swift
//  PostCard
//
//  Created by George Larkin on 9/23/14.
//  Copyright (c) 2014 George Larkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var enterNameTextField: UITextField!
    
    @IBOutlet var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var messageLabel2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
    messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel2.hidden = false
        messageLabel2.text = enterNameTextField.text
        messageLabel2.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.placeholder = "Enter Message"
    mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

