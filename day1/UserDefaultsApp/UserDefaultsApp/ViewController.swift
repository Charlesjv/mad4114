//
//  ViewController.swift
//  UserDefaultsApp
//
//  Created by MacStudent on 2018-07-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //userDefaults
        
        //key value pairs
        //1. tell ios you want to use UserDefaults(localstorage from web)
        
        let defaults = UserDefaults.standard
        print(defaults.dictionaryRepresentation())
        //2. add some to the user Defaults
        defaults.set("Priteshkumar patel", forKey:"person")
        defaults.set(true, forKey:"isInstructor")
        defaults.set(800.59, forKey:"hourlyrate")
        //array
        let coursesTaught = ["ios 101","android 101","swift301","java101","databases"]
        defaults.set(coursesTaught, forKey:"courses")
        //dictionary
        let student = ["name":"vishwa","id":"C0733333","program":"MADT"]
        defaults.set(student,forKey:"student")
        
        
        print(defaults.dictionaryRepresentation())
        
        let x = defaults.double(forKey:"hourlyrate")
        print(x)
        
        print("Is pritiesh an instructor?")
        print(defaults.bool(forKey: "isInstructor"))
        
        print("Wats his full name?")
        
        let name = defaults.string(forKey: "person")
        print(name!)
        print("Wat courses does he teach")
        let course = defaults.array(forKey: "courses") as! [String]
        print(course)
//get a dictionary
        print("Who his student?")
        let d = defaults.dictionary(forKey: "student") as! Dictionary<String,String>
        print(d)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

