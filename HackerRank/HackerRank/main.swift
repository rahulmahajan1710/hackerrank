//
//  main.swift
//  HackerRank
//
//  Created by rahul mahajan on 16/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

let numbers = "0123456789"
let lower_case = "abcdefghijklmnopqrstuvwxyz"
let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let special_characters = "!@#$%^&*()-+"


//Reduced string
var ip = ["aaabccddd","aa","baab","a"]
for s in ip{
    reduce(string: s)
}

//strong password
var spIp = ["Ab1","#HackerRank","4700"]
for s in spIp{
    print(isStrong(password: s))
}

var unsortedArr = [2, 3, 2, 4, 5, 12, 2, 3, 3, 3, 12]

//{3, 3, 3, 3, 2, 2, 2, 12, 12, 4, 5}.
sortByFrequency(arr: &unsortedArr)

