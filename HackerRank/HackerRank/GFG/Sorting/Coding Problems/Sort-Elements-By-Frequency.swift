//
//  Sort-Elements-By-Frequency.swift
//  HackerRank
//
//  Created by rahul mahajan on 24/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

func sortByFrequency(arr : inout [Int]){
    var dict = [Int :Int]()
    for i in arr{
        if let e = dict[i]{
            dict[i] = e + 1
        }
        else{
            dict[i] = 1
        }
    }
    var result = [Int]()
    var count = dict.count
    while count > 0 {
        let key = findMaxKeyIn(dict: dict)
        if let value = dict[key]{
            for _ in 0..<value{
                result.append(key)
            }
            dict.removeValue(forKey: key)
            count = dict.count
        }
    }
    print(result)
}

func findMaxKeyIn(dict : [Int:Int]) -> Int {
    var maxValue = 0
    var maxKey = 0
    for (key,value) in dict{
        if value >= maxValue {
            maxValue = value
            maxKey = key
        }
    }
    return maxKey
}




