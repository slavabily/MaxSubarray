//
//  main.swift
//  MaxSubarray
//
//  Created by slava bily on 15.12.2021.
//

import Foundation

func maxSubarray(arr: [Int]) -> [Int] {
    var tArr = arr
    var estArr = [Int]()
    for _ in arr {
        let r = tArr.reduce(0) { $0 + $1 }
        estArr.append(r)
        tArr.removeLast()
    }
    print(estArr.max()!)
    
    var estArr1 = [Int]()
    var tArr1 = arr
    while tArr1.isEmpty == false {
        let r = tArr1.reduce(0) { $0 + $1 }
        estArr1.append(r)
        if let min = tArr1.min() {
            tArr1.remove(at: tArr1.firstIndex(of: min)!)
        }
    }
    print(estArr1.max()!)
    
    return [0, 0]
}

print(maxSubarray(arr: [2, -1, 2, 3, 4, -5]))

