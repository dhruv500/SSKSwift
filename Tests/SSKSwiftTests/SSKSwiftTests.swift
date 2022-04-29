import XCTest
@testable import SSKSwift

final class SSKSwiftTests: XCTestCase {
    func test_SplitKeyShares(){
        let ssk = SSS.init(totalShare: 5, threshold: 3)
       let arr = ssk.splitSecret(secret: 65)
        do{
       let result = try ssk.regenrateSecret(sharesArr: arr)
    XCTAssertEqual(65, result)
        }
        catch(let error){
            XCTFail(error.localizedDescription)
        }
       
    }
    
    func test_SplitKeyShares_secondary(){
        let ssk = SSS.init(totalShare: 10, threshold: 5)
       let arr = ssk.splitSecret(secret: 21)
        do{
       let result = try ssk.regenrateSecret(sharesArr: arr)
    XCTAssertEqual(21, result)
        }
        catch(let error){
            XCTFail(error.localizedDescription)
        }
       
    }
}
