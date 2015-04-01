//
//  ViewController.swift
//  Postcard
//
//  Created by Lahav Redler on 3/31/15.
//  Copyright (c) 2015 LahavRedler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var anotherLabel: UILabel!
    
    @IBOutlet weak var enterNameTextBox: UITextField!
    @IBOutlet weak var enterMessageTextBox: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    // from here is the new assigenment
    
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //adding comment here
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextBox.text
        messageLabel.textColor = UIColor.redColor()
        
        anotherLabel.hidden = false
        anotherLabel.text = "Hi \(enterNameTextBox.text)"
        anotherLabel.textColor = UIColor.blueColor()
        
        enterNameTextBox.text = ""
        enterNameTextBox.resignFirstResponder()
        
        
        enterMessageTextBox.text = ""
        // func to remove keyboard after [send mail] pressed
        enterMessageTextBox.resignFirstResponder()
        
        
        // func to update the mail button title
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    
}

