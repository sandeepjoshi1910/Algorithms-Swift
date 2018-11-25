//
//  BinaryTree.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 11/24/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

import Cocoa

class BinaryTree<T>: NSObject where T : Comparable {
    
    var root : TNode<T>?
    
    func insertNode(val: T, root: TNode<T>?) {
        if root == nil {
            self.root = TNode(val: val)
        } else {
            if val < root!.value! {
                if root!.left != nil {
                    self.insertNode(val: val, root: root!.left)
                } else {
                    root!.left = TNode(val: val)
                }
            } else if val > root!.value! {
                if root!.right != nil {
                    self.insertNode(val: val, root: root!.right)
                } else {
                    root!.right = TNode(val: val)
                }
            }
        }
    }
    
    func insertVal(val: T) {
        self.insertNode(val: val, root: self.root)
    }
    
    // Print elements of a tree in a Breadth First or Level order
    func bfPrint() {
        if self.root == nil {
            print("Tree is empty to print!")
            return
        }
        
        var q : [TNode<T>]? = []
        q!.append(self.root!)
        
        while q!.isEmpty == false {
            let node = q![0]
            print(node.value!)
            q!.remove(at: 0) // Pop the element from the Queue
            // Add the elements in level order
            if node.left != nil {
                q!.append(node.left!)
            }
            if node.right != nil {
                q!.append(node.right!)
            }
        }
    }
}

class TNode<T> : NSObject where T : Comparable{
    
    var value: T?
    var left : TNode?
    var right : TNode?
    
    init(val: T) {
        self.value = val
    }
}
