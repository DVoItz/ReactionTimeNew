//
//  timerViewController.swift
//  Reaction Time
//
//  Created by student1 on 5/2/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var go = NSTimeInterval()
    var timer = NSTimer()
    
    @IBOutlet weak var tapStop: UIImageView!
    @IBOutlet weak var displayTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2.hidden = true
        button1.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "appear:", userInfo: self, repeats: false)
    }
    
    @IBAction func stop(sender: UIButton) {

        timer.invalidate()
    }
    @IBAction func clicked(sender: UIButton) {
        self.button1.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "appear", userInfo: self, repeats: false)
    }
    @IBAction func clicked2(sender: UIButton) {
        self.button2.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "appear", userInfo: self, repeats: false)
    }
    
    
    //@IBAction func clicked(sender: UIButton) {
      //  self.button1.hidden = true
        //NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "appear:", userInfo: self, repeats: false)
    //}
    func appear(timer: NSTimer) {
        self.button1.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "disappear:", userInfo: self, repeats: false)
        
    }
    func appear2(timer: NSTimer) {
        self.button2.hidden = true
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "disappear:", userInfo: self, repeats: false)
        
    }
    func disappear(timer: NSTimer) {
        self.button1.hidden = false
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "appear:", userInfo: self, repeats: false)
        
    }
    func disappear2(timer: NSTimer) {
        self.button2.hidden = false
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: "appear:", userInfo: self, repeats: false)
        
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
        displayTimer!.text = "\(seconds2).\(milli2)"
        
        if displayTimer.text == "04.00"{
            tapStop.image = UIImage(named: "target")
            
        }
        if displayTimer.text == "01.00"{
            image1.image = UIImage(named: "target")
        
        }
        if displayTimer.text == "02.00"{
            image2.image = UIImage(named: "target")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let time2 = displayTimer.text!
        let NVC1 = segue.destinationViewController as! passViewController
        NVC1.reactTime = time2
    }
    
}