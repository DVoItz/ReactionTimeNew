//
//  timerViewController.swift
//  Reaction Time
//
//  Created by student1 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    
    var startTime = NSTimeInterval()
    var timer = NSTimer()


    @IBOutlet weak var displayTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func stop(sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func start(sender: UIButton) {
        
        if (!timer.valid) {
            let aSelector : Selector = "updateTime"
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate()
        }
    }
    
    func updateTime(){
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime: NSTimeInterval = currentTime - startTime
        
        
        let minutes1 = UInt8(elapsedTime / 60.0)
        elapsedTime -= (NSTimeInterval(minutes1) * 60)
        let seconds1 = UInt8(elapsedTime)
        elapsedTime -= NSTimeInterval(seconds1)
        let milli1 = UInt8(elapsedTime * 100)
        
        
        let minutes2 = String(format: "%02d", minutes1)
        let seconds2 = String(format: "%02d", seconds1)
        let milli2 = String(format: "%02d", milli1)
        displayTimer!.text = "\(minutes2):\(seconds2):\(milli2)"
        
    }

}

