//
//  SecondViewController.swift
//  mhacks
//
//  Created by Arham Ahmed on 2015-09-12.
//  Copyright (c) 2015 Arham Ahmed. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource,  UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerDataSource = ["Ann Arbor Michigan", "Toronto Ontario",
                            "Waterloo Ontario", "Palo Alto California",
                            "Quebec City Quebec", "Manhattan New York City"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerDataSource[row]
    }
    
}
