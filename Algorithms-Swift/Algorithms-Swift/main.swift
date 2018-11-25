//
//  main.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 11/24/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Foundation

print("Hello, World!")

let list = LinkedList<Int>()
list.appendList(values: [5,6,7,8,9,2,3])


let tr = BinaryTree<Int>()
let treelem = [10,6,15,11,17,7,2]
for elem in treelem {
    tr.insertVal(val: elem)
}
tr.bfPrint()
