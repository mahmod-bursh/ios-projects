//
//  ViewController.swift
//  MyAge
//
//  Created by Amjad Jamal on 9/24/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepakcer: UIDatePicker!
    @IBOutlet weak var ladiplay: UILabel!
    @IBOutlet weak var laselect: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buget(_ sender: Any) {
        let current = Date()
        let dob = datepakcer.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.day], from: dob, to: current)
        let Year:Int = Int(component.day! / 365)
        let months:Int = Int(component.day! - (Year*365))/30
        let days:Int = component.day! - ((months*30) + (Year*365))
        
        ladiplay.text = "your age is \(Year)years and \(months) months and \(days)days"
    }
    
}

