//
//  Stack.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 11/24/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Cocoa

class Stack<T>: NSObject {
    
    var stack : [T] = []
    
    func getStackSize() -> Int {
        return self.stack.count
    }
    
    func push(val: T) {
        self.stack.append(val)
    }
    
    func pop() -> T? {
        if self.stack.count == 0 {
            return nil
        }
        let poppedValue = self.stack.remove(at: self.stack.count-1)
        return poppedValue
    }
    
    func peek() -> T? {
        if self.stack.count == 0 {
            return nil
        }
        return self.stack[self.stack.count-1]
    }
}
