//
//  Animal.swift
//  ZooApp
//
//  Created by Amjad Jamal on 9/29/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class Animal: NSObject {
    var name:String?
    var des:String?
    var image:String?
    init(name:String,des:String,image:String) {
        self.name=name
        self.des=des
        self.image=image
    }
}
