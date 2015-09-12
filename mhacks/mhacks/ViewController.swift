//
//  ViewController.swift
//  mhacks
//
//  Created by Arham Ahmed on 2015-09-12.
//  Copyright (c) 2015 Arham Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    @IBAction func signInButton(sender: AnyObject) {
        
        println(username.text)
        print(password.text)

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

