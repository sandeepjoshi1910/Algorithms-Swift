//
//  ParitionList.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 12/31/18.
//  Copyright © 2018 Sandeep Joshi. All rights reserved.
//

// Problem from Leetcode : https://leetcode.com/problems/partition-list/

//Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.
//You should preserve the original relative order of the nodes in each of the two partitions.
//
//Example:
//
//Input: head = 1->4->3->2->5->2, x = 3
//Output: 1->2->2->4->3->5

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class partitionList {
    
    func append(_ head: ListNode?, _ value: Int) -> ListNode? {
        
        if head == nil {
            return ListNode(value)
        }
        
        var curNode : ListNode? = head
        while curNode!.next != nil {
            curNode = curNode!.next
        }
        curNode!.next = ListNode(value)
        return head
    }
    
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        var smHead  : ListNode? = nil // List of all nodes with val <  x
        var bigHead : ListNode? = nil // List of all nodes with val >= x
        
        var lnode : ListNode? = head // Loop node
        
        // separate all nodes into two lists
        while lnode != nil {
            if lnode!.val < x {
                // print(lnode!.val)
                smHead = append(smHead, lnode!.val)
            }
            else if lnode!.val >= x {
                // print(lnode!.val)
                bigHead = append(bigHead, lnode!.val)
            }
            
            lnode = lnode!.next
        }
        
        if smHead == nil {
            return bigHead
        }
            
        else if bigHead == nil {
            return smHead
        }
        
        // Append end of small nodes to head of big nodes
        var tail : ListNode? = smHead
        
        while tail!.next != nil {
            tail = tail!.next
        }
        
        tail!.next = bigHead
        
        return smHead
    }
}
