//
//  Stack.swift
//  TestDS-Swift
//
//  Created by rahul mahajan on 10/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation


struct Stack<Element>{
    var items =  [Element]()
    
    mutating func push(element : Element) {
        items.append(element)
    }
    
    mutating func pop() -> Element? {
        if !items.isEmpty{
            return items.removeLast()
        }
        return nil
    }
    
    var isEmpty : Bool{
        return items.isEmpty
    }
}













