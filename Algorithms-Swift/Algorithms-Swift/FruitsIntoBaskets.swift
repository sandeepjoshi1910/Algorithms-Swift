//
//  FruitsIntoBaskets.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

class FruitsIntoBaskets {
    func totalFruit(_ tree: [Int]) -> Int {
        var basket1 : Int = -1
        var basket2 : Int = -1
        var maxSum : Int = 0
        var currentSum : Int = 0
        
        for i in (0..<tree.count) {
            basket1 = -1
            basket2 = -1
            currentSum = 0
            for j in (i..<tree.count) {
                if (i..<tree.count).count < maxSum {
                    break
                }
                if basket1 == -1 || tree[j] == basket1{
                    basket1 = tree[j]
                    currentSum += 1
                } else if basket2 == -1 || tree[j] == basket2 {
                    basket2 = tree[j]
                    currentSum += 1
                } else {
                    break
                }
            }
            if currentSum > maxSum {
                maxSum = currentSum
            }
        }
        
        return maxSum
    }
}
