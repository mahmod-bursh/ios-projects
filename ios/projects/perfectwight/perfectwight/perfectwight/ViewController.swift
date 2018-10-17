//
//  ViewController.swift
//  perfectwight
//
//  Created by Amjad Jamal on 9/23/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UITextFieldDelegate {

    var gender = ["male","female"]
    
    
    @IBOutlet weak var laselected: UILabel!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var ladiplay: UILabel!
    @IBOutlet weak var wight: UITextField!
    @IBOutlet weak var hightt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        laselected.text = gender[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bucal(_ sender: Any) {
        let n1:Int = Int(hightt.text!)!
        let n2:Int = Int(wight.text!)!
        let fin = n1*10 - n2
        ladiplay.text = "your wight should be \(fin)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
return true
    }
}

