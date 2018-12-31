//
//  Colors.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 12/27/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Foundation

class Solution {
    func sortColors(_ nums: inout [Int]) {
        
        var it : Int = 0
        var pr : Int = 0
        while pr <=  2 * nums.count-1 || it == nums.count - 1  {
            if nums[it] == 0 {
                if it == 0 {
                    it = it + 1
                } else {
                    if nums[it-1] != 0 {
                        nums.insert(0,at:0)
                        nums.remove(at:it+1)
                    } else {
                        it = it + 1
                    }
                }
            }
            else if nums[it] == 2 {
                if it != nums.count-1 {
                    nums.insert(2,at:nums.count)
                    nums.remove(at:it)
//                    if nums[it] == 2 && nums[it+1] == 2 {
//                        it = it + 1
//                    }
                } else {
                    it = it + 1
                }
                
            } else {
                it = it + 1
            }
            pr = pr + 1
        }
        
    }
}


