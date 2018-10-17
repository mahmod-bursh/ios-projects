//: Playground - noun: a place where people can play

import UIKit

var  jops = [Any]()   //array
jops.append(10)
jops.append("hello")
jops.append(2.4)
jops.remove(at: 1)



var amj = Set<Int>()    //set

amj.insert(10)
amj.insert(30)

// dictionary

print("later input")
var meg = [String:Int]()
meg["mego"] = 13
meg["bahaa"] = 20

for (k , v ) in meg {
    print("\(k) \(v)")
}

print("direct input")
var megoo : [Int:String] = [1:"amjad" , 2:"jamal" , 3:"hassouna"]

for (k , v) in megoo {
    print("\(k) \(v)")
}

