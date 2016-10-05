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

    func dictionaryRepresentation() -> [String : AnyObject]
    func get(key: String, defaultValue: AnyObject?) -> AnyObject?
    func put(key: String, value: AnyObject?)
    func has(key: String) -> Bool
    func remove(key: String) -> AnyObject?

}

public class SimpleSession: NSObject
{

    private static let DEFAULT_SESSION_PREFIX = "simple.session."

    public static var SESSION_PROTOCOL: SimpleSessionProtocol = UserDefaultsSession.sharedInstance

    public class func get(key: String, defaultValue: AnyObject? = nil) -> AnyObject?
    {
        return SESSION_PROTOCOL.get(getKey(key), defaultValue: defaultValue)
    }

    public class func put(key: String, value: AnyObject?)
    {
        SESSION_PROTOCOL.put(getKey(key), value: value)
    }

    public class func has(key: String) -> Bool
    {
        return get(key) != nil
    }

    public class func remove(key: String) -> AnyObject?
    {
        return SESSION_PROTOCOL.remove(getKey(key))
    }

    public class func clear()
    {
        let session = SESSION_PROTOCOL.dictionaryRepresentation()

        for sessionKey in session.keys {
            if sessionKey.hasPrefix(DEFAULT_SESSION_PREFIX) {
                SESSION_PROTOCOL.remove(sessionKey)
            }
        }
    }

    private class func getKey(key: String) -> String
    {
        return DEFAULT_SESSION_PREFIX + key
    }

}
