//
//  BaseViewController.swift
//  SimpleSessionDemo
//
//  Created by Nicolas Molina on 9/30/16.
//  Copyright © 2016 Nicolas Molina. All rights reserved.
//

import UIKit
import SimpleLayout

class BaseViewController: UIViewController
{

    var lastLabel: UILabel?

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setup()
    {
    }

    func log(_ message: String)
    {
        let label = UILabel()

        label.text = message
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15.0)
        label.numberOfLines = 0
        view.addSubview(label)
        label.sl_addHeight(21, relatedBy: .greaterThanOrEqual)
        label.sl_addMarginLeft(view, constant: 10.0)
        label.sl_addMarginRight(view, constant: 10.0)

        if lastLabel == nil {
            label.sl_addMarginTop(view, constant: 64.0)

        } else {
            label.sl_addMarginTop(lastLabel!, attribute: .bottom, constant: 10.0)
        }

        lastLabel = label
    }

    func delay(_ delay: Double, closure: @escaping () -> Void)
    {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC),
            execute: closure
        )
    }
    
}
