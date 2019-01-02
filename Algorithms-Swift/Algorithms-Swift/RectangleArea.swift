//
//  RectangleArea.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 1/1/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

// Problem from LeetCode : https://leetcode.com/problems/rectangle-area/
// Find the total area covered by two rectilinear rectangles in a 2D plane.
// Each rectangle is defined by its bottom left corner and top right corner as shown in the figure.
// The Goal is to find the overlapped area of the two rectangles if any and then subtract it from the sum of the areas from both rectangles.

import Foundation

class RectangleArea {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        
        
        func get_distance(_ p1:(Int,Int),_ p2: (Int,Int)) -> Int {
            let d1 : Int = p1.0-p2.0
            let d2 : Int = p1.1-p2.1
            let dist = sqrt(Double(d1 * d1) + Double(d2 * d2))
            return Int(dist)
        }
        
        let bleft1  = (A,B)
        let tleft1  = (A,D)
        let bright1 = (C,B)
        let tright1 = (C,D)
        
        let bleft2  = (E,F)
        let tleft2  = (E,H)
        let bright2 = (G,F)
        let tright2 = (G,H)
        
        let area1 = get_distance(bleft1,bright1) * get_distance(bleft1,tleft1)
        let area2 = get_distance(bleft2,bright2) * get_distance(bleft2,tleft2)
        
        
        let r1 : [(Int,Int)] = [bleft1,bright1,tleft1,tright1]
        let r2 : [(Int,Int)] = [bleft2,bright2,tleft2,tright2]
        
        var ipoints: [(Int,Int)] = []
        
        ipoints.append((max(r1[0].0,r2[0].0),max(r1[0].1,r2[0].1)))
        ipoints.append((min(r1[1].0,r2[1].0),max(r1[1].1,r2[1].1)))
        ipoints.append((max(r1[2].0,r2[2].0),min(r1[2].1,r2[2].1)))
        ipoints.append((min(r1[3].0,r2[3].0),min(r1[3].1,r2[3].1)))
        
        let sarea = get_distance(ipoints[0],ipoints[1]) * get_distance(ipoints[0],ipoints[2])
        
        var shouldsub : Bool = true
        
        for point in ipoints {
            
            if !(Range(A...C).contains(point.0)) || !(Range(B...D).contains(point.1)) {
                shouldsub = false
                break
            }
        }
        
        if !shouldsub {
            return area1 + area2
        }
        return area1 + area2 - sarea
    }
}
