//  ViewController.swift
//  DiamondKineticsCodeTest
//
//  Created by Heather Wolford on 1/26/17.
//  Copyright © 2017 Heather Wolford. All rights reserved.
//
//Instructions:
//For the coding challenge, a lot of our data is time-based data. We have events which have distinct start times and end times. For instance, our swings have a lot of data associated with them and have a defined start time and end time in our model. The same can be said of videos and batting sessions. In the app challenge, I would like you to set up some sample data types that have a start time, end time, and some other piece of data. Then, with some list of test data, given a particular time - return the list of events which contain that time. The user interface and exact data types are entirely up to you - I'm interested to see how you approach this and what your code looks like to accomplish this.

//CREDITS
//Baseball Graphic is from http://bit.ly/2jsA3dB

import UIKit


class ViewController: UIViewController{
    
    //Variables
    var batSpeedPerameter: Float = 0.000
    
    //Outlets
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TableViewController{
            if segue.identifier == "button1ToTableView"{
                destination.batSpeedParameter = 0.032
            }else if segue.identifier == "button2ToTableView"{
                destination.batSpeedParameter = 0.030
            }else if segue.identifier == "button3ToTableView"{
                destination.batSpeedParameter = 0.028
            }else if segue.identifier == "button4ToTableView"{
                destination.batSpeedParameter = 0.026
            }else{
                destination.batSpeedParameter = 0.024
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
