//
//  LinkedList.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 11/24/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Cocoa

class LinkedList: NSObject {
    
    var head : Node?
    var tail : Node?
    
    func appendNode(val: Int) {
        let newNode = Node(val: val)
        if self.head == nil {
            self.head = newNode
        } else {
            var iterNode = self.head
            while iterNode!.next != nil {
                iterNode = iterNode!.next
            }
            iterNode!.next = newNode
        }
    }
    
    func printList() {
        print("---------- Linked List ----------")
        var iterNode : Node? = self.head
        while iterNode != nil {
            print("\(iterNode!.value!)\t")
            iterNode = iterNode?.next
        }
    }
    
    func appendList(values: [Int]) {
        for elem in values {
            self.appendNode(val: elem)
        }
        self.printList()
    }
}


class Node : NSObject {
    init(val: Int) {
        self.value = val
    }
    var value : Int?
    var next : Node?
}
