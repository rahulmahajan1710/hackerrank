//
//  Two-Characters.swift
//  HackerRank
//
//  Created by rahul mahajan on 18/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

func twoCharacters(input : String) -> Int{
    var result = 0
    var dist = Set<Character>()
    
    for char in input{
        dist.insert(char)
    }
    
    let arr = Array(dist)
    return result
}

func isAlernate(_ string: String) -> Bool {
    var alt = false
    var i = 0
    let count = string.count
    while i < (count - 1) {
        if (i+1) == (count - 1), string[0] == string[i+1], alt{
            return true
        }
        else{
            if string[i] != string[i+1]{
                alt = true
            }
            else{
                
            }
        }
        
    }
    return alt
}
