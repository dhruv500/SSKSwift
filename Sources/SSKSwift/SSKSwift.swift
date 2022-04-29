import Foundation


class SSS{
    
    var totalShares:Int
    var threshold:Int
    var polyMaths:PolyMaths
    
    init(totalShare:Int,threshold:Int){
        self.totalShares = totalShare
        self.threshold = threshold
        self.polyMaths = .init()
    }
    
    func splitSecret(secret:Int) -> [Points]{
       let splitArr = polyMaths.splitSecret(n: totalShares, k: threshold, s: secret)
        return splitArr
    }
    
    func regenrateSecret(sharesArr:[Points]) throws -> Int{
        if sharesArr.count < threshold{
            throw SSSError.InvalidThreshold
        }
        var arrX = [Int]()
        var arrY = [Int]()
        for share in sharesArr {
            arrX.append(share.x)
            arrY.append(share.y)
        }
         let result = polyMaths.interpolate(arrX: arrX, arrY: arrY, k: threshold)
        return result
    }
}

