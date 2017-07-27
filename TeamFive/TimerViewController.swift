//
//  TimerViewController.swift
//  TeamFive
//
//  Created by Alison K. Knappik on 7/27/17.
//  Copyright © 2017 Margaret Hunt. All rights reserved.
//


import UIKit

class TimerViewController: UIViewController {

    var timer = Timer()
    var timerDouble = 0.0
    
    @IBOutlet var timerValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    
    @IBAction func timerButtonClicked(_ sender: Any)
    {
        
        
    }
 


    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimerLabel), userInfo: nil, repeats: true)
    }
    
    func updateTimerLabel() {
        timerDouble = timerDouble + 0.1
        
        timerValueLabel.text = "\(timerDouble))"
        
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
}
