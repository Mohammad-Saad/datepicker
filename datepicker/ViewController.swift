//
//  ViewController.swift
//  datepicker
//
//  Created by Hassaan Masood on 4/6/15.
//  Copyright (c) 2015 Szabist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //picker date outlet
    @IBOutlet weak var dayoicker: UIDatePicker!
    
    //pick button
    @IBAction func btnpickdate(sender: AnyObject) {
        //saving the date
        var chosendate = self.dayoicker.date
        
        // formatting the date
        
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        //create messgae
        //taking string from date
        let day = formatter.stringFromDate(chosendate)
        //printing the day
        let result = "That was \(day)"
        
        //creating alert
        let myalert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        // Makeing ok button
        
        myalert.addAction(UIAlertAction (title:"ok" , style :UIAlertActionStyle.Default, handler:nil ))
        
        //presenting alert
        self.presentViewController(myalert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

