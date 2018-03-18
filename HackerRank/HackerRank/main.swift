//
//  main.swift
//  HackerRank
//
//  Created by rahul mahajan on 16/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

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
