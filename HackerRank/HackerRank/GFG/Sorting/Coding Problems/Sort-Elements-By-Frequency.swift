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
    
    print(dict)
}




