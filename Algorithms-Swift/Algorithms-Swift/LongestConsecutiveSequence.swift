//
//  LongestConsecutiveSequence.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

class LongestConsecutiveSequence {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longestSeq = 0
        
        for num in nums {
            var inc = 1
            var curLen = 1
            while true {
                if numSet.contains(num+inc) {
                    curLen += 1
                    inc += 1
                } else {
                    break
                }
            }
            if curLen > longestSeq {
                longestSeq = curLen
            }
        }
        
        return longestSeq
        
    }
}
