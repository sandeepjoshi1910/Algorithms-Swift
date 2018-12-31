//
//  Treewidth.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 12/27/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Foundation



 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
}

class TSolution {
    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var q :[TreeNode?] = []
        var maxlen : Int = 0
        q.append(root)
        while q.count != 0 {
            print(q.count)
            var next : [TreeNode?] = []
            
            var it = 0
            while it <= q.count - 1 {
                
                if q[it] != nil {
                    
                    if (q[it]!.left! != nil || q[it]!.right! != nil ) {
                        if q[it]!.left! == nil {
                            next.append(nil)
                            next.append(q[it]!.right!)
                            
                        } else if q[it]!.right! == nil {
                            next.append(q[it]!.left!)
                            next.append(nil)
                            
                        } else {
                            next.append(q[it]!.left!)
                            next.append(q[it]!.right!)
                        }
                    } else {
                        next.append(nil)
                        next.append(nil)
                    }
                    
                } else {
                    next.append(nil)
                    next.append(nil)
                }
                it = it + 1
            }
            
            while true {
                if next.count == 0 || (next.first! != nil && next.last! != nil) {
                    break
                }
                if next.first! == nil || next.last! == nil {
                    if next.first! == nil {
                        next.removeFirst()
                    }
                    
                    if next.last! == nil {
                        next.removeLast()
                    }
                    
                }
            }
            
            if next.count == 0 {
                break
            }
            
            if next.count > maxlen {
                maxlen = next.count
            }
            q = next
            
        }
        return maxlen
    }
}
