SimpleLayout
============
[![Version](http://img.shields.io/cocoapods/v/SimpleLayout.svg?style=flat)](http://cocoapods.org/pods/SimpleLayout) [![Platform](http://img.shields.io/cocoapods/p/SimpleLayout.svg?style=flat)](http://cocoapods.org/pods/SimpleLayout) [![License](http://img.shields.io/cocoapods/l/SimpleLayout.svg?style=flat)](LICENSE)


Índice
------

* [Features][features].
* [Screen Shots][screenshots].
* [Prerequisites][prerequisites].
* [Installation][Installation].
* [How to Use][how_to_use].
    + [Example][how_to_use_example].
    + [API][how_to_use_api].
        + [Margin][how_to_use_api_margin].
        + [Origin][how_to_use_api_origin].
        + [Size][how_to_use_api_size].
* [License][license].


Features
--------
* Easy to use
* NSLayoutConstraint shortcuts


Screen Shots
------------
<p>
    <a href="https://github.com/comodinx/SimpleLayout/blob/master/Screenshots/DemoExample.png?raw=true" target="_blank">
        <img src="https://github.com/comodinx/SimpleLayout/raw/master/Screenshots/DemoExample.png?raw=true" alt="Demo Example" title="Demo Example" width="320" height="568">
    </a>
</p>

Prerequisites
-------------
* iOS 8+
* Xcode 7+
* Swift 2.0


Installation
------------
SimpleLayout is available through CocoaPods. To install it, simply add the following line to your Podfile:
```
pod "SimpleLayout"
```


How to Use
----------
Check out the demo project for a concrete example.

#### Example
``` swift
let background = UIView()

background.backgroundColor = .greenColor()
view.addSubview(background)

SimpleLayout.addMarginZero(background, toItem: view)
// OR
// background.sl_addMarginZero(view)
// OR
// background.sl_addMargin(view, constant: 0)
```

#### API

##### Margin

```swift
let imgProfile = UIImageView()

imgProfile.image = UIImage(named: "yourimage")
view.addSubview(imgProfile)

SimpleLayout.addMarginTop(imgProfile, toItem: view, constant: 10)
SimpleLayout.addMarginLeft(imgProfile, toItem: view, constant: 10)
SimpleLayout.addMarginRight(imgProfile, toItem: view, constant: 10)
// OR
// imgProfile.sl_addMarginTop(view, constant: 10)
// imgProfile.sl_addMarginLeft(view, constant: 10)
// imgProfile.sl_addMarginRight(view, constant: 10)
// OR
// imgProfile.sl_addMarginTop(view, constant: 10)
// imgProfile.sl_addMarginLeading(view, constant: 10)
// imgProfile.sl_addMarginTrailing(view, constant: 10)
```

```swift
let lblFooter = UILabel()

lblFooter.text = "Copyright © 2016 YourApp. All rights reserved"
view.addSubview(lblFooter)

SimpleLayout.addMarginBottom(lblFooter, toItem: view, constant: 10)
SimpleLayout.addMarginLeft(lblFooter, toItem: view, constant: 10, relatedBy: .GreaterThanOrEqual)
SimpleLayout.addMarginRight(lblFooter, toItem: view, constant: 10, relatedBy: .GreaterThanOrEqual)
// OR
// lblFooter.sl_addMarginBottom(view, constant: 10)
// lblFooter.sl_addMarginLeft(view, constant: 10, relatedBy: .GreaterThanOrEqual)
// lblFooter.sl_addMarginRight(view, constant: 10, relatedBy: .GreaterThanOrEqual)
// OR
// lblFooter.sl_addMarginBottom(view, constant: 10)
// lblFooter.sl_addMarginLeading(view, constant: 10, relatedBy: .GreaterThanOrEqual)
// lblFooter.sl_addMarginTrailing(view, constant: 10, relatedBy: .GreaterThanOrEqual)
```

##### Origin

```swift
let lblName = UILabel()

lblName.text = "Pepito"
view.addSubview(lblName)

SimpleLayout.addCenter(lblName, toItem: view)
// OR
// lblName.sl_addCenter(view)
```

```swift
let lblFooter = UILabel()

lblFooter.text = "Copyright © 2016 YourApp. All rights reserved"
view.addSubview(lblFooter)

SimpleLayout.addCenterX(lblFooter, toItem: view)
SimpleLayout.addMarginBottom(lblFooter, toItem: view, constant: 10)
// OR
// lblFooter.sl_addCenterX(view)
// lblFooter.sl_addMarginBottom(view, constant: 10)
```

##### Size

```swift
let lblDescription = UILabel()

lblDescription.text = "Description to long..."
lblDescription.lineBreakMode = NSLineBreakMode.ByWordWrapping
lblDescription.numberOfLines = 0 // Infinite
view.addSubview(lblDescription)

SimpleLayout.addHeight(lblDescription, constant: 21, relatedBy: .GreaterThanOrEqual)
// OR
// lblDescription.sl_addHeight(21, relatedBy: .GreaterThanOrEqual)
```

```swift
let imgProfile = UIImageView()

imgProfile.image = UIImage(named: "yourimage")
view.addSubview(imgProfile)

SimpleLayout.addSize(imgProfile, constant: 175)
SimpleLayout.addCenter(imgProfile, toItem: view)
// OR
// imgProfile.sl_addSize(175)
// imgProfile.sl_addCenter(view)
```

License
-------
SimpleLayout is available under the MIT license. See the LICENSE file for more info.

<!-- deep links -->
[features]: #features
[screenshots]: #screen-shots
[prerequisites]: #prerequisites
[installation]: #installation
[how_to_use]: #how-to-use
[how_to_use_example]: #example
[how_to_use_api]: #api
[how_to_use_api_margin]: #margin
[how_to_use_api_origin]: #origin
[how_to_use_api_size]: #size
[license]: #license
