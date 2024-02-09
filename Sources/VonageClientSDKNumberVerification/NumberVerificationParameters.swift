//
//  NumberVerificationParameters.swift
//
//
//  Created by Abdulhakim Ajetunmobi on 07/02/2024.
//

import Foundation

public struct VGNumberVerificationParameters {
    let url: String
    let headers: [String: String]
    let queryParameters: [String: String]
    
    public init(url: String, headers: [String : String], queryParameters: [String : String]) {
        self.url = url
        self.headers = headers
        self.queryParameters = queryParameters
    }
}
