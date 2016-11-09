//
//  UserDefaultsSession.swift
//  SimpleSession
//
//  Created by Nicolas Molina on 8/8/16.
//  Copyright © 2016 SimpleSession. All rights reserved.
//

import UIKit

open class UserDefaultsSession: SimpleSessionProtocol
{

    static let sharedInstance = UserDefaultsSession()

    open func dictionaryRepresentation() -> [String : Any]
    {
        return UserDefaults.standard.dictionaryRepresentation() as [String : Any]
    }

    open func get(_ key: String, defaultValue: Any? = nil) -> Any?
    {
        let defaults = UserDefaults.standard

        if let value = defaults.object(forKey: key) {
            return value as Any?
        }
        return defaultValue
    }

    open func put(_ key: String, value: Any?)
    {
        if value == nil {
            remove(key)

        } else {
            let defaults = UserDefaults.standard

            defaults.set(value, forKey: key)
            defaults.synchronize()
        }
    }

    open func has(_ key: String) -> Bool
    {
        return get(key) != nil
    }

    @discardableResult open func remove(_ key: String) -> Any?
    {
        let defaults = UserDefaults.standard
        let value = get(key)

        defaults.removeObject(forKey: key)
        defaults.synchronize()

        return value
    }

}
