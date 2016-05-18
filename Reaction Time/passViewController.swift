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
    var reactTime2 = String()
    var reactTime3 = String()
    var reactTime4 = String()
    
    @IBOutlet weak var passFailImage2: UIImageView!
    @IBOutlet weak var passFailImage: UIImageView!
    @IBOutlet weak var passFailLabel2: UILabel!
    @IBOutlet weak var passFailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let doubleTime = NSString(string: reactTime).doubleValue
        print(doubleTime)
        let doubleTime2 = NSString(string: reactTime2).doubleValue
        print(doubleTime2)
        let doubleTime3 = NSString(string: reactTime3).doubleValue
        print(doubleTime3)
        let doubleTime4 = NSString(string: reactTime4).doubleValue
        print(doubleTime4)
        passFailLabel.textColor = UIColor.whiteColor()
        let average = doubleTime + doubleTime2 + doubleTime3 + doubleTime4
        passFailLabel.text! = "\(average/4 - 1)"
        
        if doubleTime > 1.62 {
            passFailLabel2.text! = "YOU FAILED"
            passFailLabel2.textColor = UIColor.redColor()
            passFailImage.image = UIImage(named: "fail")
            passFailImage2.image = UIImage(named: "fail")
        }
        else {
            passFailLabel2.text! = "YOU PASSED"
            passFailLabel2.textColor = UIColor.yellowColor()
            passFailImage.image = UIImage(named: "smiley4")
            passFailImage2.image = UIImage(named: "smiley4")
        }
        
    }
    
}
