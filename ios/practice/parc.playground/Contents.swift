//: Playground - noun: a place where people can play

import UIKit

class Iden{
    var Fname:String?
    var lname: String?
    var male:Bool?
    var id:Int?
    var age:Int?
    var marrage:Bool?
    
    func Getname() -> String {
        
        let name = Fname! + lname!
        
        return name
        
    }
    
    init(Fname:String,lname:String,male:Bool,id:Int,age:Int,marrage:Bool) {
        
        print("created")
    }
  
    init() {
        print("not created")
    }
    
}
let Ident = Iden(Fname: "amjad", lname: "hassouna", male: true, id: 12344456, age: 25, marrage: false)
Ident.Getname()

let idetify = Iden()



