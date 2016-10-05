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

public class MySession: SimpleSessionProtocol
{

    private var Session: [String : AnyObject] = [:]

    public func dictionaryRepresentation() -> [String : AnyObject] {
        return Session
    }

    public func get(key: String, defaultValue: AnyObject? = nil) -> AnyObject? {
        return Session[key]
    }

    public func put(key: String, value: AnyObject?) {
        Session[key] = value
    }

    public func has(key: String) -> Bool {
        return get(key) != nil
    }

    public func remove(key: String) -> AnyObject? {
        return Session.removeValueForKey(key)
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
        SimpleSession.put("data", value: NSData(bytes: [0xFF, 0xD9] as [UInt8], length: 2))
        log("Key: data\nValue: \(SimpleSession.get("data") as! NSData)")

        log("------------------------------")

        // Remove an object from the Session
        SimpleSession.remove("string")
        log("Remove Key: string\nValue: \(SimpleSession.get("string") as? String)")

        log("------------------------------")

        // Clean the Session
        // SimpleSession.clear()
    }
    
}
