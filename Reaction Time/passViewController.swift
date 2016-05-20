//
//  passViewController.swift
//  Reaction Time
//
//  Created by student1 on 5/3/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class passViewController: UIViewController {
    
    var reactTime1 = String()
    var reactTime2 = String()
    var reactTime3 = String()
    var reactTime4 = String()
    
    @IBOutlet weak var passFailImage2: UIImageView!
    @IBOutlet weak var passFailImage: UIImageView!
    @IBOutlet weak var passFailLabel2: UILabel!
    @IBOutlet weak var passFailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var doubleTime = NSString(string: reactTime1).doubleValue
        var doubleTime2 = NSString(string: reactTime2).doubleValue
        var doubleTime3 = NSString(string: reactTime3).doubleValue
        var doubleTime4 = NSString(string: reactTime4).doubleValue
        var added = doubleTime + doubleTime2 + doubleTime3 + doubleTime4
        var averageTotal = added / 4
        var averageFinal = averageTotal - 1
        passFailLabel.textColor = UIColor.whiteColor()
        passFailLabel.text! = "\(averageFinal)"
        
        if averageFinal > 0.8 {
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
