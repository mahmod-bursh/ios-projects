//
//  viewcontroler2.swift
//  ZooApp
//
//  Created by Amjad Jamal on 9/27/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class viewcontroler2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableviewlist: UITableView!
    
    var animals = Array<Animal>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animals.append(Animal(name: "baboon", des: "nice one who live in forest", image: "baboon"))
        animals.append(Animal(name: "bulldog", des: "nice one who live in forest", image: "bulldog"))
        animals.append(Animal(name: "panda", des: "nice one who live in forest", image: "panda"))
        animals.append(Animal(name: "swallow_bird", des: "nice one who live in forest", image: "swallow_bird"))
        animals.append(Animal(name: "white_tiger", des: "nice one who live in forest", image: "white_tiger"))
        animals.append(Animal(name: "zebra", des: "nice one who live in forest", image: "zebra"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:mycell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mycell
        cell.laname.text=animals[indexPath.row].name!
        cell.lades.text=animals[indexPath.row].des!
        cell.laimg.image=UIImage (named: animals[indexPath.row].image!)
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
