//
//  UIView+SimpleLayout.swift
//  SimpleLayout
//
//  Created by Nicolas Molina on 9/22/16.
//  Copyright © 2016 SimpleLayout. All rights reserved.
//

import UIKit

public extension UIView
{

    /**
     Add a constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public func sl_addConstraint(
        attribute: NSLayoutAttribute,
        toItem: UIView? = nil,
        attribute toAttribute: NSLayoutAttribute,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return SimpleLayout.addConstraint(
            self,
            attribute: attribute,
            toItem: toItem,
            attribute: toAttribute,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a margin top constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public func sl_addMarginTop(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Top,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Top,
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
    public func sl_addMarginTopZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Top,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginTop(
            toItem,
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
    public func sl_addMarginBottom(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Bottom,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Bottom,
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
    public func sl_addMarginBottomZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Bottom,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginBottom(
            toItem,
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
    public func sl_addMarginLeft(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Left,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Left,
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
    public func sl_addMarginLeftZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Left,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginLeft(
            toItem,
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
    public func sl_addMarginRight(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Right,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Right,
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
    public func sl_addMarginRightZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Right,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginRight(
            toItem,
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
    public func sl_addMarginLeading(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Leading,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Leading,
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
    public func sl_addMarginLeadingZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Leading,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginLeading(
            toItem,
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
    public func sl_addMarginTrailing(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Trailing,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Trailing,
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
    public func sl_addMarginTrailingZero(
        toItem: UIView,
        attribute: NSLayoutAttribute = .Trailing,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginTrailing(
            toItem,
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
    public func sl_addMargin(
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        return SimpleLayout.addMargin(
            self,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add margins top, bottom, left and right in 0 (zero) to be toItem or item and activate.

     - returns: The constraints [top, bottom, left, right].
     */
    public func sl_addMarginZero(
        toItem: UIView,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        return self.sl_addMargin(
            toItem,
            constant: 0.0,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a horizontal align (X) constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public func sl_addCenterX(
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .CenterX,
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
    public func sl_addCenterY(
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .CenterY,
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
    public func sl_addCenter(
        toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        return SimpleLayout.addCenter(
            self,
            toItem: toItem,
            constant: constant,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

    /**
     Add a width constraint to be toItem or item and activate.

     - returns: The constraint.
     */
    public func sl_addWidth(
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Width,
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
    public func sl_addHeight(
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .Height,
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
    public func sl_addSize(
        constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .Equal,
        multiplier: CGFloat = 1.0
    ) -> [NSLayoutConstraint]
    {
        return SimpleLayout.addSize(
            self,
            constant: constant,
            toItem: toItem,
            relatedBy: relatedBy,
            multiplier: multiplier
        )
    }

}
