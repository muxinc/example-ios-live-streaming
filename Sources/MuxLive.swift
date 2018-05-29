//
//  MuxLive.swift
//  MuxLive
//
//  Copyright (c) 2018 Mux, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation
import Alamofire

// MARK: - types

/// Error domain for all MuxLive errors.
public let MuxLiveErrorDomain = "MuxLiveErrorDomain"

/// Error types.
public enum MuxLiveError: Error, CustomStringConvertible {
    case unknown
    
    public var description: String {
        get {
            switch self {
            case .unknown:
                return "Unknown"
            }
        }
    }
}

// MARK: - MuxLive

/// MuxLive, a live video streaming SDK for iOS
public class MuxLive {

    // MARK: - properties
    
    /// Network reachability status of poly.googleapis.com
    public var networkReachable: Bool {
        get {
            return self._reachabilityStatus != .notReachable
        }
    }
    
    // MARK: - ivars

    internal var _reachabilityManager: NetworkReachabilityManager?
    internal var _reachabilityStatus: NetworkReachabilityManager.NetworkReachabilityStatus = .unknown
    
    // MARK: - singleton
    
    /// singleton (if desired)
    public static let shared = MuxLive()
    
    // MARK: - object lifecycle
    
    /// Initializer
    public init() {
        self._reachabilityManager = NetworkReachabilityManager(host: "api.mux.com")
        self.setupClient()
    }
    
}

// MARK: - setup

extension MuxLive {
    
    internal func setupClient() {
  
    }

}

extension MuxLive {
        
    /// Reset client configuration
    public func reset() {
    }
    
}
