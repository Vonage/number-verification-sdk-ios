//
//  VGNumberVerificationClient.swift
//
//
//  Created by Abdulhakim Ajetunmobi on 07/02/2024.
//

import Foundation

enum VGNumberVerificationError: Error {
    case invalidUrl
}

public final class VGNumberVerificationClient {
    let cellularClient: CellularClient
        
    init(cellularClient: CellularClient) {
        self.cellularClient = cellularClient
    }
    
    public convenience init() {
        self.init(cellularClient: VGCellularClient())
    }
    
    /// This method performs a GET request given a URL with cellular connectivity
    /// - Parameters:
    ///   - params: Parameters to configure your GET request
    ///   - debug: A flag to include or not the url trace in the response
    public func startNumberVerification(params: VGNumberVerificationParameters, debug: Bool = false) async throws -> [String: Any] {
        if let url = constructURL(params: params) {
            let response = await cellularClient.get(url: url, headers: params.headers, debug: debug)
            return response
        } else {
            throw VGNumberVerificationError.invalidUrl
        }
    }
    
    private func constructURL(params: VGNumberVerificationParameters) -> URL? {
        var urlComponents = URLComponents()
        urlComponents.queryItems = params.queryParameters.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let urlString: String
        if let queryParameterString = urlComponents.percentEncodedQuery, !queryParameterString.isEmpty {
            urlString = "\(params.url)?\(queryParameterString)"
        } else {
            urlString = "\(params.url)"
        }
        
        return URL(string: urlString)
    }
}
