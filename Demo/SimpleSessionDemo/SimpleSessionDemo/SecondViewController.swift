//
//  SecondViewController.swift
//  SimpleSessionDemo
//
//  Created by Nicolas Molina on 9/30/16.
//  Copyright © 2016 Nicolas Molina. All rights reserved.
//

import UIKit
import SimpleSession
import SimpleLayout

open class MySession: SimpleSessionProtocol
{

    fileprivate var Session: [String : Any] = [:]

    open func dictionaryRepresentation() -> [String : Any] {
        return Session
    }

    open func get(_ key: String, defaultValue: Any? = nil) -> Any? {
        return Session[key]
    }

    open func put(_ key: String, value: Any?) {
        Session[key] = value
    }

    open func has(_ key: String) -> Bool {
        return get(key) != nil
    }

    @discardableResult open func remove(_ key: String) -> Any? {
        return Session.removeValue(forKey: key)
    }

}

class SecondViewController: BaseViewController
{

    override func setup()
    {
        super.setup()

        log("Personalized Session")

        SimpleSession.SESSION_PROTOCOL = MySession()

        log("------------------------------")

        // String
        SimpleSession.put("string", value: "This is a string")
        log("Key: string\nValue: \(SimpleSession.get("string") as! String)")

        // Double
        SimpleSession.put("number", value: Double(20.3))
        log("Key: number\nValue: \(SimpleSession.get("number") as! Double)")

        // Array
        SimpleSession.put("array", value: ["Hello", "Array"])
        log("Key: array\nValue: \(SimpleSession.get("array") as! [String])")

        // JSON
        SimpleSession.put("json", value: ["key": "value"])
        log("Key: json\nValue: \(SimpleSession.get("json") as! [String : String])")

        // NSData
        SimpleSession.put("data", value: Data(bytes: UnsafePointer<UInt8>([0xFF, 0xD9] as [UInt8]), count: 2))
        log("Key: data\nValue: \(SimpleSession.get("data") as! Data)")

        log("------------------------------")

        // Remove an object from the Session
        SimpleSession.remove("string")
        log("Remove Key: string\nValue: \(SimpleSession.get("string") as? String)")

        log("------------------------------")

        // Clean the Session
        // SimpleSession.clear()
    }
    
}
