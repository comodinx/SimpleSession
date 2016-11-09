//
//  SimpleLayout.swift
//  SimpleLayout
//
//  Created by Nicolas Molina on 9/22/16.
//  Copyright © 2016 SimpleLayout. All rights reserved.
//

import UIKit

open class SimpleLayout: NSObject
{

    /**
     Add a constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addConstraint(
        _ item: UIView,
        attribute: NSLayoutAttribute,
        toItem: UIView? = nil,
        attribute toAttribute: NSLayoutAttribute,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        let constraint = NSLayoutConstraint(
            item: item,
            attribute: attribute,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: toAttribute,
            multiplier: multiplier,
            constant: constant
        )

        item.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([constraint])
        return constraint
    }

    /**
     Add a margin top constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginTop(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .top,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .top,
            toItem: toItem,
            attribute: attribute,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin top 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginTopZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .top,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginTop(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin bottom constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginBottom(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .bottom,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .bottom,
            toItem: toItem,
            attribute: attribute,
            constant: -constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin bottom 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginBottomZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .bottom,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginBottom(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin left constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginLeft(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .left,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .left,
            toItem: toItem,
            attribute: attribute,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin left 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginLeftZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .left,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginLeft(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin right constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginRight(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .right,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .right,
            toItem: toItem,
            attribute: attribute,
            constant: -constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin right 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginRightZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .right,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginRight(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin leading constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginLeading(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .leading,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .leading,
            toItem: toItem,
            attribute: attribute,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin leading 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginLeadingZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .leading,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginLeading(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin trailing constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginTrailing(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .trailing,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .trailing,
            toItem: toItem,
            attribute: attribute,
            constant: -constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin trailing 0 (zero) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addMarginTrailingZero(
        _ item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .trailing,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginTrailing(
            item,
            toItem: toItem,
            attribute: attribute,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add margins top, bottom, left and right to be toItem or item and activate.

     - returns: The constraints [top, bottom, left, right].
     */
    @discardableResult open class func addMargin(
        _ item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        let constraintTop = SimpleLayout.addMarginTop(
            item,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
        let constraintBottom = SimpleLayout.addMarginBottom(
            item,
            toItem: toItem,
            constant: -constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
        let constraintLeft = SimpleLayout.addMarginLeft(
            item,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
        let constraintRight = SimpleLayout.addMarginRight(
            item,
            toItem: toItem,
            constant: -constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )

        return [constraintTop, constraintBottom, constraintLeft, constraintRight]
    }

    /**
     Add margins top, bottom, left and right in 0 (zero) to be toItem or item and activate.

     - returns: The constraints [top, bottom, left, right].
     */
    @discardableResult open class func addMarginZero(
        _ item: UIView,
        toItem: UIView,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        return SimpleLayout.addMargin(
            item,
            toItem: toItem,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a horizontal align (X) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addCenterX(
        _ item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .centerX,
            toItem: toItem,
            attribute: .centerX,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a vertical align (Y) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addCenterY(
        _ item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .centerY,
            toItem: toItem,
            attribute: .centerY,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add horizontal and vertical align (X and Y) to be toItem or item and activate.

     - returns: The constraints [x, y].
     */
    @discardableResult open class func addCenter(
        _ item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        let constraintX = SimpleLayout.addCenterX(
            item,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
        let constraintY = SimpleLayout.addCenterY(
            item,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )

        return [constraintX, constraintY]
    }

    /**
     Add a width constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addWidth(
        _ item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .width,
            toItem: toItem,
            attribute: .width,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a height constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    @discardableResult open class func addHeight(
        _ item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .height,
            toItem: toItem,
            attribute: .height,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add width and height constraints to be toItem or item and activate.

     - returns: The constraints [width, height].
     */
    @discardableResult open class func addSize(
        _ item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        let constraintWidth = SimpleLayout.addWidth(
            item,
            constant: constant,
            toItem: toItem,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
        let constraintHeight = SimpleLayout.addHeight(
            item,
            constant: constant,
            toItem: toItem,
            relatedBy: relatedBy,
            multiplier: multiplier
        )

        return [constraintWidth, constraintHeight]
    }

}
