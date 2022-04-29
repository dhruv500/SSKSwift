

import Foundation


struct Points{
    var x:Int
    var y:Int
}

struct fract{
    
    var num:Int
    var den:Int
    
    
    // to reduce the fraction with gcd to avoid decimal points
    mutating func reduce(){
        let gcd =  gcdIterativeEuklid(num, den)
        num = num/gcd
        den = den/gcd
    }
    
    //multiplication of fraction
    func multiply(secondFrac:fract) -> fract{
        var temp:fract = .init(num: num * secondFrac.num, den: den * secondFrac.den)
        temp.reduce()
        return temp
    }
    
    // addition of fraction
    func add(secondFrac:fract) -> fract{
        var temp:fract = .init(num: num * secondFrac.den + den * secondFrac.num,den: secondFrac.den * den)
        temp.reduce()
        return temp
    }
    
}


enum SSSError:Error{
    case InvalidThreshold
}


