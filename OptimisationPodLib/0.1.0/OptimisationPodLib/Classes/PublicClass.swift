//
//  PublicClass.swift
//  OptimisationCrashDemo
//
//  Created by priders on 2023/9/20.
//

import Foundation
@objc public class PublicClass: NSObject {
    @objc public static func getSomeValue() -> LibData? {
        PrivateClass.shared.getSomeValue()
    }
}
