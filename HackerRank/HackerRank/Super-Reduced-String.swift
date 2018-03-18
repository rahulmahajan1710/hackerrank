//
//  Super-Reduced-String.swift
//  HackerRank
//
//  Created by rahul mahajan on 16/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation

//aaabccddd → abccddd → abddd → abd
//baab -> bb ->Emtyp

extension String{
    subscript(i : Int) -> Character{
        return self[index(startIndex, offsetBy: i)]
    }
    
    mutating func removeCharacter(at : Int) {
        remove(at: index(startIndex, offsetBy: at))
    }
}

func reduce(string : String){
    var  i = 0
    var len = string.count
    var temp = string
    while i < (len - 1) {
        if temp[i] == temp[i+1]{
            let removeIndex = temp.index(temp.startIndex, offsetBy: i)
            temp.remove(at: removeIndex)
            temp.remove(at: removeIndex)
            len = temp.count
            i = 0
        }
        else{
            i = i + 1
        }
        if i == (temp.count - 1) {
            break
        }
    }
    if temp.isEmpty{
        print("Empty String")
    }
    else{
        print(temp)
    }
}






