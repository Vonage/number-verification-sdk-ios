import XCTest
@testable import VonageClientSDKNumberVerification

final class VonageClientSDKNumberVerificationTests: XCTestCase {
        
    func testUrlGeneration_noParams() async throws {
        let params = VGNumberVerificationParameters(url: "http://www.vonage.com", headers: ["x-my-header": "My Value"], queryParameters: [:])
        
        let cellularClient = MockCellularClient()
        let client = VGNumberVerificationClient(cellularClient: cellularClient)
        _ = try await client.startNumberVerification(params: params)
        
        XCTAssertEqual(cellularClient.urlString, "http://www.vonage.com")
    }
    
    func testUrlGeneration_validParams() async throws {
        let params = VGNumberVerificationParameters(url: "http://www.vonage.com", headers: ["x-my-header": "My Value"], queryParameters: ["query-param" : "value"])
        
        let cellularClient = MockCellularClient()
        let client = VGNumberVerificationClient(cellularClient: cellularClient)
        _ = try await client.startNumberVerification(params: params)
        
        XCTAssertEqual(cellularClient.urlString, "http://www.vonage.com?query-param=value")
    }
    
    func testUrlGeneration_encodedParams() async throws {
        let params = VGNumberVerificationParameters(url: "http://www.vonage.com", headers: ["x-my-header": "My Value"], queryParameters: ["query-param" : "my value"])
        
        let cellularClient = MockCellularClient()
        let client = VGNumberVerificationClient(cellularClient: cellularClient)
        _ = try await client.startNumberVerification(params: params)
        
        XCTAssertEqual(cellularClient.urlString, "http://www.vonage.com?query-param=my%20value")
    }
}
