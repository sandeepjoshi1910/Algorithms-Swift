//
//  DailyTemp.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

class DailyTemp {
    func dailyTemperatures(_ T: [Int]) -> [Int] {
        
        var waitDays : [Int] = []
        
        for i in (0..<T.count) {
            let temp = i
            let len = waitDays.count
            for j in (i+1..<T.count) {
                if T[j] > T[i] {
                    waitDays.append(j-i)
                    break
                }
            }
            if len == waitDays.count {
                waitDays.append(0)
            }
        }
        
        return waitDays
        
    }
}
