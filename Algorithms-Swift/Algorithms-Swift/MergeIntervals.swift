//
//  MergeIntervals.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

/**
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */

 public class Interval {
   public var start: Int
   public var end: Int
   public init(_ start: Int, _ end: Int) {
     self.start = start
     self.end = end
   }
 }

class MergeIntervals {
    func merge(_ intervals: [Interval]) -> [Interval] {
        var ans : [Interval] = []
        
        var vals = intervals
        vals = vals.sorted { $0.start < $1.start }
        for val in vals {
            if ans.isEmpty {
                ans.append(val)
            } else {
                if ans.last!.end < val.start {
                    ans.append(val)
                } else {
                    if ans.last!.end < val.end {
                        ans.last!.end = val.end
                    }
                }
            }
        }
        
        return ans
    }
}
