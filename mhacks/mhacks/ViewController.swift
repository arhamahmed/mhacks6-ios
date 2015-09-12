//
//  ViewController.swift
//  mhacks
//
//  Created by Arham Ahmed on 2015-09-12.
//  Copyright (c) 2015 Arham Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var valid = false
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func signInButton(sender: AnyObject) {
        
        if (username.hasText() && password.hasText()) {
            println("username is: " + username.text)
            print("password is: " + password.text)
            valid = true
            self.performSegueWithIdentifier("validsign", sender: nil)
        }
        else {
            let alert = UIAlertView()
            alert.title = "Sign in Error"
            alert.message = "Your username or password was empty and/or not valid."
            alert.addButtonWithTitle("Ok")
            alert.show()
        }
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


