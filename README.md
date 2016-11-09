SimpleSession
=============
[![Version](http://img.shields.io/cocoapods/v/SimpleSession.svg?style=flat)](http://cocoapods.org/pods/SimpleSession) [![Platform](http://img.shields.io/cocoapods/p/SimpleSession.svg?style=flat)](http://cocoapods.org/pods/SimpleSession) [![License](http://img.shields.io/cocoapods/l/SimpleSession.svg?style=flat)](LICENSE)


Índice
------

* [Features][features].
* [Prerequisites][prerequisites].
* [Installation][Installation].
* [How to Use][how_to_use].
    + [Example][how_to_use_example].
    + [API][how_to_use_api].
        + [Default values][how_to_use_api_default_values].
        + [get][how_to_use_api_get].
        + [put][how_to_use_api_put].
        + [has][how_to_use_api_has].
        + [remove][how_to_use_api_remove].
        + [clear][how_to_use_api_clear].
    + [Personalize][how_to_use_personalize].
* [License][license].


Features
--------
* Easy to use
* Personalize session protocol
* Default session protocol use user defaults


Prerequisites
-------------
* iOS 8+
* Xcode 7+
* Swift 3.0


Installation
------------
SimpleSession is available through CocoaPods. To install it, simply add the following line to your Podfile:
```
pod "SimpleSession"
```


How to Use
----------
Check out the demo project for a concrete example.

#### Example
``` swift
// String
SimpleSession.put("string", value: "This is a string")
print("Key: string\nValue: \(SimpleSession.get("string"))")

// Number
SimpleSession.put("number", value: 20.3)
print("Key: number\nValue: \(SimpleSession.get("number"))")

// JSON
SimpleSession.put("json", value: ["key": "value"])
print("Key: json\nValue: \(SimpleSession.get("json"))")

// NSData
SimpleSession.put("data", value: NSData(bytes: [0xFF, 0xD9] as [UInt8], length: 2))
print("Key: data\nValue: \(SimpleSession.get("data"))")

print("------------------------------")

// Remove an object from the session
SimpleSession.remove("string")
print("Remove Key: string\nValue: \(SimpleSession.get("string"))")

print("------------------------------")

// Clean the session
SimpleSession.clear()
```

#### API

##### Default values

Session protocol. Default use user defaults

```swift
SimpleSession.SESSION_PROTOCOL: SimpleSessionProtocol = UserDefaultsSession.sharedInstance // Default session use user defaults

// Configure other session
SimpleSession.SESSION_PROTOCOL = MySession()
```

##### get

```swift
SimpleSession.get(key: String, defaultValue: Any? = nil)
```

Return value for `key` in session. If not has `key` in session return `defaultValue`.

```swift
SimpleSession.get("exist.key")                        // return value for "exist.key"
SimpleSession.get("not.exist.key")                    // return nil, because "not.exist.key" not exist in session
SimpleSession.get("not.exist.key2", defaultValue: 10) // return 10, because "not.exist.key" not exist in session, but defaultValue is set
```

##### put

```swift
SimpleSession.put(key: String, value: Any?)
```

Put `value` for `key` in session. Expired in `seconds`.

```swift
SimpleSession.put("a.key", value: 10)
```

##### has

```swift
SimpleSession.has(key: String)
```

Return `true` if has value for `key` in session, else `false`.

```swift
SimpleSession.has("exist.key")     // return true
SimpleSession.has("not.exist.key") // return false
```

##### remove

```swift
SimpleSession.remove(key: String)
```

Return value for `key` in session if exist, and remove this key in session.

```swift
SimpleSession.remove("exist.key")     // return value for "exist.key"
SimpleSession.remove("not.exist.key") // return nil, because "not.exist.key" not exist in session
```

##### clear

Return remove all keys in session.

```swift
SimpleSession.clear()
```

#### Personalize

```swift
import SimpleSession

open class MySession: SimpleSessionProtocol
{

    fileprivate var session: [String : Any] = [:]

    open func get(_ key: String, defaultValue: Any? = nil) -> Any? {
        if let value = session[key] {
            return value
        }
        return defaultValue
    }

    open func put(_ key: String, value: Any?) {
        session[key] = value
    }

    open func has(_ key: String) -> Bool {
        return get(key) != nil
    }

    @discardableResult open func remove(_ key: String) -> Any? {
        return session.removeValueForKey(key)
    }
    
}

// Configure in AppDelegate.swift
class AppDelegate: UIResponder, UIApplicationDelegate {

    // ...

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Configure session
        SimpleSession.SESSION_PROTOCOL = MySession()

        return true
    }

    // ...

}
```


License
-------
SimpleSession is available under the MIT license. See the LICENSE file for more info.

<!-- deep links -->
[features]: #features
[screenshots]: #screen-shots
[prerequisites]: #prerequisites
[installation]: #installation
[how_to_use]: #how-to-use
[how_to_use_example]: #example
[how_to_use_api]: #api
[how_to_use_api_default_values]: #default-values
[how_to_use_api_get]: #get
[how_to_use_api_put]: #put
[how_to_use_api_has]: #has
[how_to_use_api_remove]: #remove
[how_to_use_api_clear]: #clear
[how_to_use_api_clean_expirated]: #cleanexpirated
[how_to_use_api_is_expirated]: #isexpirated
[how_to_use_personalize]: #personalize
[license]: #license
