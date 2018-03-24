//
//  Strong-Password.swift
//  HackerRank
//
//  Created by rahul mahajan on 17/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation


//let n = Int(readLine()!)!
//let pw = readLine()!



func isStrong(password : String) -> Int{
    var isNeeded = 0
    var isNum = false
    var isLower = false
    var isUpper = false
    var isSpecial = false
    
    for s in password{
        if !isNum, numbers.contains(s){
            isNum = true
        }
        if !isLower, lower_case.contains(s){
            isLower = true
        }
        if !isUpper, upper_case.contains(s){
            isUpper = true
        }
        if !isSpecial, special_characters.contains(s){
            isSpecial = true
        }
    }
    
    if !isNum{ isNeeded = isNeeded + 1 }
    if !isLower { isNeeded = isNeeded + 1 }
    if !isUpper { isNeeded = isNeeded + 1 }
    if !isSpecial { isNeeded = isNeeded + 1 }
    
    let l = password.count - 6
    
    if password.count + isNeeded >= 6 {
        return isNeeded
    }
    return abs(l)
}

