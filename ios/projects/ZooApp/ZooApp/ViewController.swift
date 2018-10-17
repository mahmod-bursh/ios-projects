//
//  ViewController.swift
//  ZooApp
//
//  Created by Amjad Jamal on 9/27/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    
    var Killer = ["lion","tiger","fox","bear"]
    var NotKiller = ["cat","dolphin","panda","mouse"]
    var Section = ["Killer","NotKiller"]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Killer.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
    return Section.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section==0{
            cell.textLabel?.text = Killer[indexPath.row]
        }else{
            cell.textLabel?.text = NotKiller[indexPath.row]
        }
return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Section[section]
    }
}

