//
//  UniqEmailAddresses.swift
//  Algorithms-Swift
//
//  Created by Sandeep Joshi on 3/11/19.
//  Copyright © 2019 Sandeep Joshi. All rights reserved.
//

import Foundation


class UniqEmails {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var uniqEmails : Set<String> = Set()
        
        for email in emails {
            var mailId = email
            let comps = mailId.components(separatedBy : "@")
            
            if comps.count < 2 {
                // Invalid email id
                continue
            }
            
            var first = comps[0]
            first = first.replacingOccurrences(of: ".", with: "" )
            let firstComps = first.components(separatedBy: "+")
            
            uniqEmails.insert(firstComps[0]+comps[1])
            
        }
        
        return uniqEmails.count
    }
}
