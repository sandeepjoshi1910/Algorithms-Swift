//
//  Heap.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 1/8/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

class MinHeap {
    
    var heap : [Int] = []
    
    init() {
        self.heap = [0]
    }
    
    func insert(elem:Int) {
        if self.heap.isEmpty {
            self.heap.append(elem)
            return
        }
        
        self.heap.append(elem)
        self.heapify()
    }
    
    func heapify() {
        var index = self.heap.count - 1
        while index/2 > 0 {
            if self.heap[index] > self.heap[index/2] {
                let temp = self.heap[index]
                self.heap[index] = self.heap[index/2]
                self.heap[index/2] = temp
                index = index/2
            } else {
                break
            }
        }
        
    }
    
}

