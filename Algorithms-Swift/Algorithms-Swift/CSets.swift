//
//  CSets.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 12/27/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Foundation

class CSolution {
    func numIslands(_ grid: [[Character]]) -> Int {
        
        func get_neighbors(p: (Int,Int)) -> [(Int,Int)] {
            return [(p.0+1,p.1),(p.0-1,p.1),(p.0,p.1-1),(p.0,p.1+1)]
        }
        
        func is_valid(p:(Int,Int)) -> Bool{
            return Range(0...grid.count - 1).contains(p.0) && Range(0...grid[0].count - 1).contains(p.1)
        }
        
        var seen : [(Int,Int)] = []
        var connectedSets : [[(Int,Int)]] = []
        
        for i in Range(0...grid.count - 1) {
            for j in Range(0...grid[0].count - 1) {
                
                if !seen.contains(where:{$0 == (i,j)}) && grid[i][j] == "1" {
                    var q = [(i,j)]
                    var cset : [(Int,Int)] = []
                    while !q.isEmpty {
                        let e = q.removeFirst()
                        
                        if seen.contains(where: {$0 == e}) {
                            continue
                        }
                        
                        if grid[e.0][e.1] == "1" {
                            cset.append((e.0,e.1))
                            seen.append((e.0,e.1))
                            
                            for neighbor in get_neighbors(p:e) {
                                if is_valid(p:neighbor)  {
                                    if grid[neighbor.0][neighbor.1] == "1" && !q.contains(where: {$0 == neighbor}) {
                                        q.append(neighbor)
                                    }
                                }
                            }
                            
                        }
                    }
                    
                    connectedSets.append(cset)
                }
                
                
            }
        }
        
        
        return connectedSets.count
        
    }
}
