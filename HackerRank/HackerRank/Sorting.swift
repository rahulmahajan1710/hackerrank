//
//  Sorting.swift
//  TestDS-Swift
//
//  Created by rahul mahajan on 10/03/18.
//  Copyright © 2018 rahul mahajan. All rights reserved.
//

import Foundation


/* QUICK SORT
 
 Concept:
    -- select a pivot element in the array (last element).
    -- partition the array in the 2 parts.
    -- After partition the left from pivot should be small and right should be greater than the pivot element.
 */


func swap<A : Comparable>(arr : inout [A], a : Int, b: Int){
    let t  = arr[a]
    arr[a] = arr[b]
    arr[b] = t
}

func partition<A : Comparable>(arr : inout [A], low : Int, high : Int) -> Int {
    let pivot = arr[high]
    var index = low - 1
    for j in low...(high-1) {
        if arr[j] <= pivot {
            index = index + 1
            swap(arr: &arr, a: index, b: j)
        }
    }
    swap(arr: &arr, a: (index+1), b: high)
    return index+1
}


func quickSort<A>(arr : inout [A], low : Int, high : Int) where A : Comparable {
    if low < high {
        let pi = partition(arr: &arr, low: low, high: high)
        quickSort(arr: &arr, low: low, high: (pi-1))
        quickSort(arr: &arr, low: (pi+1), high: high)
    }
}


/*
 Bubble Sort:
 -- 	swap adjacent elements
 */
func bubbleSort<A : Comparable>(arr : inout [A]){
    print("Bubble Sort in action...")
    let end = arr.count - 1
    for i in 0...end {
        for j in 0..<(end-i){
            if arr[j] > arr[j+1]{
                swap(arr: &arr, a: j, b: j+1)
            }
        }
    }
}

/* Merge Sort */

func mergeSort<T : Comparable>(array : [T]) -> [T] {
    guard array.count > 1 else { return array}
    let mid = array.count/2
    let left = mergeSort(array: Array(array[0..<mid]))
    let right = mergeSort(array: Array(array[mid..<array.count]))
    return merge(left: left, right: right)
}

func merge<T : Comparable>(left : [T], right : [T]) -> [T]{
    var leftIndex = 0
    var rightIndex = 0
    
    var orderedArray = [T]()
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement{
            orderedArray.append(leftElement)
            leftIndex = leftIndex + 1
        }
        else if rightElement < leftElement{
            orderedArray.append(rightElement)
            rightIndex = rightIndex  + 1
        }
        else{
            orderedArray.append(leftElement)
            leftIndex = leftIndex + 1
            orderedArray.append(rightElement)
            rightIndex = rightIndex + 1
        }
    }
    
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex = leftIndex + 1
    }
    
    while rightIndex < right.count{
        orderedArray.append(right[rightIndex])
        rightIndex = rightIndex + 1
    }
    return orderedArray
}




