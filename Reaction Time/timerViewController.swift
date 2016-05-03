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
        
        let firstSelector : Selector = "updateTimer"
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: firstSelector, userInfo: nil, repeats: true)
        startTime = NSDate.timeIntervalSinceReferenceDate()
    }
    
    func updateTime(){
        var currentTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime: NSTimeInterval = currentTime - startTime
        
        
        let minutes = UInt8(elapsedTime / 60.0)
        elapsedTime -= (NSTimeInterval(minutes) * 60)
        let seconds = UInt8(elapsedTime)
        elapsedTime -= NSTimeInterval(seconds)
        let fraction = UInt8(elapsedTime * 100)
        
        
        let strMinutes = String(format: "%02d", minutes)
        let strSeconds = String(format: "%02d", seconds)
        let strFraction = String(format: "%02d", fraction)
        displayTimer!.text = "\(strMinutes):\(strSeconds):\(strFraction)"
        
    }

}

