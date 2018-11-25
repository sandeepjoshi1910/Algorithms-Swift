//
//  Queue.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 11/24/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Cocoa

class Queue<T>: NSObject {
    
    var queue : [T] = []
    
    func isQEmpty() -> Bool {
        if self.queue.isEmpty == true {
            return true
        } else {
            return false
        }
    }
    
    func getQueueSize() -> Int {
        return self.queue.count
    }
    
    func enqueue(val: T) {
        self.queue.append(val)
    }
    
    func dequeue() -> T? {
        if self.queue.isEmpty == true {
            return nil
        }
        let dequeuedVal = self.queue[0]
        self.queue.remove(at: 0)
        return dequeuedVal
    }
    
    func peek() -> T? {
        if self.queue.isEmpty == true {
            return self.queue[0]
        } else {
            return nil
        }
        
    }
    
}

