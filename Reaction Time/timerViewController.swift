//
//  timerViewController.swift
//  Reaction Time
//
//  Created by student1 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    
    var go = NSTimeInterval()
    var timer = NSTimer()
    
    
    @IBOutlet weak var displayTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func stop(sender: UIButton) {
        if displayTimer.text == "00:01:00"{
            
        }
        timer.invalidate()
    }
    
    
    @IBAction func start(sender: UIButton) {
        
        if (!timer.valid) {
            let test:Selector = "updateTime"
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: test, userInfo: nil, repeats: true)
            go = NSDate.timeIntervalSinceReferenceDate()
        }
    }
    
    func updateTime(){
        var timeNow = NSDate.timeIntervalSinceReferenceDate()
        var pass: NSTimeInterval = timeNow - go
        
        
        let minutes1 = UInt8(pass / 60.0)
        pass -= (NSTimeInterval(minutes1) * 60)
        let seconds1 = UInt8(pass)
        pass -= NSTimeInterval(seconds1)
        let milli1 = UInt8(pass * 100)
        
        
        let minutes2 = String(format: "%02d", minutes1)
        let seconds2 = String(format: "%02d", seconds1)
        let milli2 = String(format: "%02d", milli1)
        displayTimer!.text = "\(minutes2):\(seconds2):\(milli2)"
        
    }
    
}

