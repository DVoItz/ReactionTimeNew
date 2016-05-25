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
    
    @IBOutlet weak var labelFail: UILabel!
    @IBOutlet weak var passFailImage2: UIImageView!
    @IBOutlet weak var passFailImage: UIImageView!
    @IBOutlet weak var passFailLabel2: UILabel!
    @IBOutlet weak var passFailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let doubleTime = NSString(string: reactTime1).doubleValue
        let doubleTime2 = NSString(string: reactTime2).doubleValue
        let doubleTime3 = NSString(string: reactTime3).doubleValue
        let doubleTime4 = NSString(string: reactTime4).doubleValue
        let added = doubleTime + doubleTime2 + doubleTime3 + doubleTime4
        let averageTotal = added / 4
        let averageFinal = averageTotal - 1
        passFailLabel.textColor = UIColor.whiteColor()
        passFailLabel.text! = "\(averageFinal)"
        
        if averageFinal > 0.60 {
            passFailLabel2.text! = "YOU FAILED"
            passFailLabel2.textColor = UIColor.redColor()
            passFailImage.image = UIImage(named: "fail")
            passFailImage2.image = UIImage(named: "fail")
            labelFail.text! = "You're SLOWER than the average Reaction Time!!"
            labelFail.textColor = UIColor.redColor()
        }
        else {
            passFailLabel2.text! = "YOU PASSED"
            passFailLabel2.textColor = UIColor.yellowColor()
            passFailImage.image = UIImage(named: "smiley4")
            passFailImage2.image = UIImage(named: "smiley4")
            labelFail.text! = "You're FASTER than the average Reaction Time!!"
            labelFail.textColor = UIColor.yellowColor()
        }
    }
    
}
