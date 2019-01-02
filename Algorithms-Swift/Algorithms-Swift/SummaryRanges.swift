//
//  SummaryRanges.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 1/1/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

// Problem from LeetCode : https://leetcode.com/problems/summary-ranges/

//Given a sorted integer array without duplicates, return the summary of its ranges.
//Example
//Input:  [0,1,2,4,5,7]
//Output: ["0->2","4->5","7"]
//Explanation: 0,1,2 form a continuous range; 4,5 form a continuous range.

class SummaryRange {
    func summaryRanges(_ nums: [Int]) -> [String] {
        
        if nums == [] {
            return []
        } else if nums.count == 1 {
            return [String(nums[0])]
        }
        
        var start : Int = nums[0]
        var end : Int = nums[0]
        var output : [String] = []
        
        for i in Range(1...nums.count - 1) {
            if nums[i] - end > 1 {
                if start == end {
                    output.append(String(start))
                } else {
                    output.append(String(start)+"->"+String(end))
                }
                start = nums[i]
                end = nums[i]
            } else {
                end = nums[i]
            }
        }
        
        if start == end {
            output.append(String(start))
        } else {
            output.append(String(start)+"->"+String(end))
        }
        return output
    }
}
