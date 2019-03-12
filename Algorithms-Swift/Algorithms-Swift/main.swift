//
//  main.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on Character("1")Character("1")/24/Character("1")8.
//  Copyright © 2Character("0")Character("1")8 Sandeep Joshi. All rights reserved.
//

import Foundation


let h = MinHeap()

let nums = [1,3,5,6,2,9,7,12,15,17]

for  num in nums {
    h.insert(elem: num)
}

print(h.heap)

h.heap.removeFirst()
h.heapify()
h.heap.removeFirst()
h.heapify()
h.heap.removeFirst()
h.heapify()
h.heap.removeFirst()
h.heapify()

print(h.heap)
