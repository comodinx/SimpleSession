//
//  SimpleLayout.swift
//  SimpleLayout
//
//  Created by Nicolas Molina on 9/22/16.
//  Copyright © 2016 SimpleLayout. All rights reserved.
//

import UIKit

public class SimpleLayout: NSObject
{

    /**
     Add a constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public class func addConstraint(
        item: UIView,
        attribute: NSLayoutAttribute,
        toItem: UIView? = nil,
        attribute toAttribute: NSLayoutAttribute,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
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

        NSLayoutConstraint.activateConstraints([constraint])
        return constraint
    }

    /**
     Add a margin top constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public class func addMarginTop(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Top,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Top,
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
    public class func addMarginTopZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Top,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addMarginTop(
            item,
            toItem: toItem,
            relatedBy: relatedBy,
            attribute: attribute,
            multiplier: multiplier,
            constant: 0.0
        )
    }

    /**
     Add a margin bottom constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public class func addMarginBottom(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Bottom,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Bottom,
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
    public class func addMarginBottomZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Bottom,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMarginLeft(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Left,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Left,
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
    public class func addMarginLeftZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Left,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMarginRight(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Right,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Right,
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
    public class func addMarginRightZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Right,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMarginLeading(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Leading,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Leading,
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
    public class func addMarginLeadingZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Leading,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMarginTrailing(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Trailing,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Trailing,
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
    public class func addMarginTrailingZero(
        item: UIView,
        toItem: UIView,
        attribute: NSLayoutAttribute = .Trailing,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMargin(
        item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addMarginZero(
        item: UIView,
        toItem: UIView,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addCenterX(
        item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .CenterX,
            toItem: toItem,
            attribute: .CenterX,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a vertical align (Y) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public class func addCenterY(
        item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .CenterY,
            toItem: toItem,
            attribute: .CenterY,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add horizontal and vertical align (X and Y) to be toItem or item and activate.

     - returns: The constraints [x, y].
     */
    public class func addCenter(
        item: UIView,
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
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
    public class func addWidth(
        item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Width,
            toItem: toItem,
            attribute: .Width,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a height constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public class func addHeight(
        item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            item,
            attribute: .Height,
            toItem: toItem,
            attribute: .Height,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add width and height constraints to be toItem or item and activate.

     - returns: The constraints [width, height].
     */
    public class func addSize(
        item: UIView,
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
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
