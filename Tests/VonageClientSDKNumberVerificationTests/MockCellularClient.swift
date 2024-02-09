//
//  File.swift
//  
//
//  Created by Abdulhakim Ajetunmobi on 09/02/2024.
//

import Foundation
@testable import VonageClientSDKNumberVerification


class MockCellularClient: CellularClient {
    var urlString: String = ""
    
    func get(url: URL, headers: [String : String], debug: Bool) async -> [String : Any] {
        self.urlString = url.absoluteString
        return [:]
    }
}
