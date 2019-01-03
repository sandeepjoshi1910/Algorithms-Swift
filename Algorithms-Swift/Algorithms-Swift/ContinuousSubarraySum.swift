//
//  ContinuousSubarraySum.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 1/2/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

// Problem from Leetcode : https://leetcode.com/problems/continuous-subarray-sum/
//Given a list of non-negative numbers and a target integer k, write a function to check if the array has a continuous subarray of size at least 2 that sums up to the multiple of k, that is, sums up to n*k where n is also an integer.

//Example 1:
//Input: [23, 2, 4, 6, 7],  k=6
//Output: True
//Explanation: Because [2, 4] is a continuous subarray of size 2 and sums up to 6.
//Example 2:
//Input: [23, 2, 6, 4, 7],  k=6
//Output: True
//Explanation: Because [23, 2, 6, 4, 7] is an continuous subarray of size 5 and sums up to 42.
//Note:
//The length of the array won't exceed 10,000.
//You may assume the sum of all the numbers is in the range of a signed 32-bit integer.

import Foundation


class ContinuousSubArraySum {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        if nums == []{
            return false
        }
        if k == 0 {
            
            for i in Range(0...nums.count - 1) {
                if nums[i] == 0 {
                    if i + 1 <= nums.count - 1 {
                        if nums[i+1] == 0 {
                            return true
                        }
                    }
                }
            }
            return false
        }
        var sum : Int = 0
        var nos : Int = 0
        for i in Range(0...nums.count - 1) {
            sum = 0
            nos = 0
            for j in Range(i...nums.count - 1) {
                sum = sum + nums[j]
                nos = nos + 1
                if sum % k == 0 && nos >= 2 {
                    return true
                }
            }
        }
        
        return false
    }
}
