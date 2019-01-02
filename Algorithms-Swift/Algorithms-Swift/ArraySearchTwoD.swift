//
//  ArraySearchTwoD.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 1/1/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation


// Problem from Leetcode : https://leetcode.com/problems/search-a-2d-matrix/
//Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
//
//Integers in each row are sorted from left to right.
//The first integer of each row is greater than the last integer of the previous row.

class MatrixTwoDSearch {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        if matrix.count == 1 && matrix[0].count == 0 {
            return false
        }
        
        var row : [Int] = []
        for r in matrix {
            if target <= r.max()! && target >= r.min()! {
                row = r
                break
            }
        }
        print(row)
        if row == [] {
            return false
        }
            
        else if target == row.first || target == row.last {
            return true
        }
            
        else {
            var left = 0
            var right = row.count - 1
            
            while left <= right {
                print(left,right)
                if left == right {

                    if row[left] == target{
                        return true
                    } else {
                        return false
                    }
                }
                let mid = (left + right) / 2
                
                if row[mid] == target {
                    return true
                }
                else if row[mid] > target {
                    right = mid - 1
                }
                else {
                    left = mid + 1
                }
                print(mid)
            }
        }
        
        return false
        
    }
}
