//
//  ViewController.swift
//  Challenge 1
//
//  Created by Lee Huff on 5/14/15.
//  Copyright (c) 2015 Lee Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonTouch(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageLabel.textColor = UIColor.greenColor()
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
        
        sendButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

