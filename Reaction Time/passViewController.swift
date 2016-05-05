//
//  passViewController.swift
//  Reaction Time
//
//  Created by student1 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class passViewController: UIViewController {
    
    var reactTime = String()
    
    @IBOutlet weak var passFailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(reactTime)
        var doubleTime = NSString(string: reactTime).doubleValue
        passFailLabel.textColor = UIColor.whiteColor()
        passFailLabel.text! = "Your Reaction Time was \(doubleTime - 1)"

    }
    
}
