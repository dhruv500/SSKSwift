//
//  File.swift
//  
//
//  Created by Dhruv Jaiswal on 29/04/22.
//

import Foundation


func gcdIterativeEuklid(_ m: Int, _ n: Int) -> Int {
    var a: Int = 0
    var b: Int = max(m, n)
    var r: Int = min(m, n)

    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    return b
}
