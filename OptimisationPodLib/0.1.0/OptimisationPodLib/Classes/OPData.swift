//
//  OPData.swift
//  OptimisationPodLib
//
//  Created by priders on 2023/9/20.
//

import Foundation

@objc public protocol LibData {}

class OPData: NSObject, LibData{
    
    let _data: [String: Any]?
    
    
    init(data: [String: Any]?) {
        _data = data
    }
    
    func getBool(key: String) -> Bool {
        return _data?[key] as? Bool ?? false
    }
    
    func getInt(key: String) -> Int {
        return _data?[key] as? Int ?? 0
    }
    
    func getDouble(key: String) -> Double {
        return _data?[key] as? Double ?? 0
    }
    
    func getString(key: String) -> String? {
        return _data?[key] as? String
    }
    
    func getBool(key: String,defaultValue:Bool) -> Bool {
        return _data?[key] as? Bool ?? defaultValue
    }
    
    func getInt(key: String,defaultValue:Int) -> Int {
        return _data?[key] as? Int ?? defaultValue
    }
    
    func getDouble(key: String,defaultValue:Double) -> Double {
        return _data?[key] as? Double ?? defaultValue
    }
    
    func getValue(key: String) -> LibData? {
        if let sub = _data?[key] as? [String: Any] {
            return OPData.init(data: sub)
        }
        return nil
    }
    
    func getAll() -> [String : Any]? {
        return _data
    }
    

}
