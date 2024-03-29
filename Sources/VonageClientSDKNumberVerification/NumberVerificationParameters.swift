//
//  NumberVerificationParameters.swift
//
//
//  Created by Abdulhakim Ajetunmobi on 07/02/2024.
//

import Foundation

@objc public class VGNumberVerificationParameters: NSObject {
    let url: String
    let headers: [String: String]
    let queryParameters: [String: String]
    
    @objc public init(url: String, headers: [String : String], queryParameters: [String : String]) {
        self.url = url
        self.headers = headers
        self.queryParameters = queryParameters
    }
}
