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
    @discardableResult public func sl_addConstraint(
        _ attribute: NSLayoutAttribute,
        toItem: UIView? = nil,
        attribute toAttribute: NSLayoutAttribute,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginTop(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .top,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .top,
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
    @discardableResult public func sl_addMarginTopZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .top,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addMarginTop(
            toItem,
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
    @discardableResult public func sl_addMarginBottom(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .bottom,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .bottom,
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
    @discardableResult public func sl_addMarginBottomZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .bottom,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginLeft(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .left,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .left,
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
    @discardableResult public func sl_addMarginLeftZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .left,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginRight(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .right,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .right,
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
    @discardableResult public func sl_addMarginRightZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .right,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginLeading(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .leading,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .leading,
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
    @discardableResult public func sl_addMarginLeadingZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .leading,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginTrailing(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .trailing,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .trailing,
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
    @discardableResult public func sl_addMarginTrailingZero(
        _ toItem: UIView,
        attribute: NSLayoutAttribute = .trailing,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMargin(
        _ toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addMarginZero(
        _ toItem: UIView,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addCenterX(
        _ toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .centerX,
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
    @discardableResult public func sl_addCenterY(
        _ toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .centerY,
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
    @discardableResult public func sl_addCenter(
        _ toItem: UIView,
        constant: CGFloat = 0.0,
        relatedBy: NSLayoutRelation = .equal,
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
    @discardableResult public func sl_addWidth(
        _ constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .width,
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
    @discardableResult public func sl_addHeight(
        _ constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
        multiplier: CGFloat = 1.0
    ) -> NSLayoutConstraint
    {
        return self.sl_addConstraint(
            .height,
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
    @discardableResult public func sl_addSize(
        _ constant: CGFloat = 0.0,
        toItem: UIView? = nil,
        relatedBy: NSLayoutRelation = .equal,
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
