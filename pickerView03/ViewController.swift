//
//  ViewController.swift
//  pickerView03
//
//  Created by D7703_07 on 2019. 4. 18..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var color = ["red", "green", "blue"]
    var emotion = ["Hot", "calm", "beach", "sky", "elepants"]
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
        pickerView.delegate = self
        
        lbl.text = color[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    //UIPickerViewDelegate method
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl.text = color[row]
        print("component = \(component)")
        print("row = \(row)")
        //lbl.text = String(row)
    }
    
    //public func pickerView(_pikerView: UIPickerView, )


}

