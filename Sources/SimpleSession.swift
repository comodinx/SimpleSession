//
//  SimpleSession.swift
//  SimpleSession
//
//  Created by Nicolas Molina on 8/8/16.
//  Copyright © 2016 SimpleSession. All rights reserved.
//

import UIKit

public protocol SimpleSessionProtocol
{

    func dictionaryRepresentation() -> [String : Any]
    func get(_ key: String, defaultValue: Any?) -> Any?
    func put(_ key: String, value: Any?)
    func has(_ key: String) -> Bool
    @discardableResult func remove(_ key: String) -> Any?

}

open class SimpleSession: NSObject
{

    fileprivate static let DEFAULT_SESSION_PREFIX = "simple.session."

    open static var SESSION_PROTOCOL: SimpleSessionProtocol = UserDefaultsSession.sharedInstance

    open class func get(_ key: String, defaultValue: Any? = nil) -> Any?
    {
        return SESSION_PROTOCOL.get(getKey(key), defaultValue: defaultValue)
    }

    open class func put(_ key: String, value: Any?)
    {
        SESSION_PROTOCOL.put(getKey(key), value: value)
    }

    open class func has(_ key: String) -> Bool
    {
        return get(key) != nil
    }

    @discardableResult open class func remove(_ key: String) -> Any?
    {
        return SESSION_PROTOCOL.remove(getKey(key))
    }

    open class func clear()
    {
        let session = SESSION_PROTOCOL.dictionaryRepresentation()

        for sessionKey in session.keys {
            if sessionKey.hasPrefix(DEFAULT_SESSION_PREFIX) {
                remove(sessionKey)
            }
        }
    }

    fileprivate class func getKey(_ key: String) -> String
    {
        return DEFAULT_SESSION_PREFIX + key
    }

}
