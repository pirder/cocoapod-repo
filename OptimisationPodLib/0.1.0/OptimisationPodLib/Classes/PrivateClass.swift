//
//  PrivateClass.swift
//  OptimisationCrashDemo
//
//  Created by priders on 2023/9/20.
//

import Foundation

class PrivateClass: NSObject {
    
    private var _config: [String: Any] = [:]

    static let shared = PrivateClass()
    
    private override init() {}
    
    func getSomeValue() -> LibData? {
        return OPData.init(data: _config)
    }
    
}
