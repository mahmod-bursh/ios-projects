//
//  ViewController.swift
//  Calculator
//
//  Created by Amjad Jamal on 9/23/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var ladisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func bumult(_ sender: Any) {let n1 = Double (num1.text!)!
        let n2 = Double (num2.text!)!
        let mult = n1 * n2
        ladisplay.text = "Result = \(mult)"
    }
    @IBAction func budiv(_ sender: Any) {
        let n1 = Double (num1.text!)!
        let n2 = Double (num2.text!)!
        let div = n1 / n2
        ladisplay.text = "Result = \(div)"
    }
    
    @IBAction func busub(_ sender: Any) {
        let n1 = Double (num1.text!)!
        let n2 = Double (num2.text!)!
        let sub = n1 - n2
        ladisplay.text = "Result = \(sub)"
    }
    
    
    @IBAction func busum(_ sender: Any) {
        let n1 = Double (num1.text!)!
        let n2 = Double (num2.text!)!
        let sum = n1 + n2
        ladisplay.text = "Result = \(sum)"
        
    }
    
}

