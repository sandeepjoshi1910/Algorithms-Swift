//
//  GameOfLife.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation

class GameOfLife {
    func gameOfLife(_ board: inout [[Int]]) {
        
        var toggleCells : [(Int,Int)] = []
        /*
         (i-1,j-1)  (i-1, j)  (i-1,j+1)
         (i  ,j-1)  (i  , j)  (i  ,j+1)
         (i+1,j-1)  (i+1, j)  (i+1,j+1)
         
         */
        
        func getOnes(points:[(Int,Int)]) -> Int {
            var numOnes = 0
            for point in points {
                if board[point.0][point.1] == 1 {
                    numOnes += 1
                }
            }
            return numOnes
        }
        
        func isValidNeighbor(point : (Int,Int)) -> Bool {
            return (point.0 >= 0 && point.0 < board.count) && (point.1 >= 0 && point.1 < board[0].count)
        }
        
        
        func getValidNeighbors(i : Int, j : Int) -> [(Int,Int)] {
            var neighbors : [(Int,Int)] = [(i-1,j-1),(i-1, j),(i-1,j+1),(i+1,j-1),(i+1,j),(i+1,j+1),(i,j-1),(i,j+1)]
            return neighbors.filter(isValidNeighbor)
        }
        
        func decideNextStateForPoint(i:Int,j:Int) {
            var neighbors = getValidNeighbors(i : i,j : j)
            let numOnes = getOnes(points : neighbors)
            if board[i][j] == 1 {
                if numOnes < 2 || numOnes > 3 {
                    toggleCells.append((i,j))
                }
            } else {
                if numOnes == 3 {
                    toggleCells.append((i,j))
                }
            }
        }
        
        for i in (0..<board.count) {
            for j in (0..<board[0].count) {
                decideNextStateForPoint(i : i,j : j)
            }
        }
        
        for cell in toggleCells {
            
            board[cell.0][cell.1] = 1 - board[cell.0][cell.1]
            
        }
        
    }
}
