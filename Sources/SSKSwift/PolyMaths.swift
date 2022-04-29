//
//  File.swift
//  
//
//  Created by Dhruv Jaiswal on 29/04/22.
//

import Foundation

class PolyMaths{

func splitSecret(n:Int,k:Int,s:Int) -> [Points]{
    var arr = [s]
   var pointsArr = [Points]()
    
    
    //Finding random numbers of b,c,d ....
    for _ in 1..<k{
        //mod for keeping numbers small
        let p = arc4random() % 997
        arr.append(Int(p))
    }
    for i in 1...n{
        let x = i
        pointsArr.append(.init(x: x, y: 0))
    }
   
    
    for i in 0...n-1{
        let y = calculateY(x: i+1, arr: arr)
        pointsArr[i].y = y
    }
    
    return pointsArr
}
    
    //calculating Y = a + bx + cx^2 .......
    func calculateY(x:Int,arr:[Int]) ->Int{
        var temp:Int = 0
        for i in 0...arr.count - 1{
            temp = temp + (arr[i] * Int(pow(Double(x), Double(i))))
        }
        return temp
    }
    
    
    
    //Recalculating the curve/line using lagrange polynomial interpolation
    func interpolate(arrX:[Int],arrY:[Int],k:Int) -> Int{
      
        
        //Need to keep the values in fraction cause division causes decimal points and rounding  the numbers result in wrong values
        var out:fract = .init(num: 0, den: 1)
        for i in 0...k-1{
            var l = fract(num: arrY[i], den: 1)
            for j in 0...k-1{
            if i != j{
                let temp:fract = .init(num:(0 - arrX[j]), den: arrX[i] - arrX[j])
                l = l.multiply(secondFrac: temp)
            }
        }
            print(out)
            out = out.add(secondFrac: l)
        
        }
        //need to return the numerator
        return out.num
    }

}
