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
    
    @IBOutlet weak var passFailImage2: UIImageView!
    @IBOutlet weak var passFailImage: UIImageView!
    @IBOutlet weak var passFailLabel2: UILabel!
    @IBOutlet weak var passFailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var doubleTime = NSString(string: reactTime).doubleValue
        print(doubleTime)
        passFailLabel.textColor = UIColor.whiteColor()
        passFailLabel.text! = "\(doubleTime - 1)"
        
        if doubleTime > 1.62 {
            passFailLabel2.text! = "YOU FAILED"
            passFailLabel2.textColor = UIColor.redColor()
            passFailImage.image = UIImage(named: "fail")
            passFailImage2.image = UIImage(named: "fail")
        }
        else {
            passFailLabel2.text! = "YOU PASSED"
            passFailLabel2.textColor = UIColor.yellowColor()
            passFailImage.image = UIImage(named: "smiley")
            passFailImage2.image = UIImage(named: "smiley")
        }

    }
    
}
