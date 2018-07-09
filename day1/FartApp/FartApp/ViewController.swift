//
//  ViewController.swift
//  FartApp
//
//  Created by MacStudent on 2018-07-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //variables and outlets
    
   // create a sound variable
    
    var audioPlayer: AVAudioPlayer?
    
    // default functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //actions
    
    @IBAction func playFart(_ sender: UIButton) {
       var url = Bundle.main.url(forResource:"fart-03", withExtension:"mp3")
        if (sender.tag == 1){
             print("Wet fart pressed")
              url = Bundle.main.url(forResource:"fart-03", withExtension:"mp3")
        }
        else if(sender.tag == 2){
            print("lentil FART PRESSED")
             url = Bundle.main.url(forResource:"fart-06", withExtension:"mp3")
        }
        
        else if(sender.tag == 3){
            print("SQUEAKY FART PRESSED")
            url = Bundle.main.url(forResource:"fart-squeak-01", withExtension:"mp3")
        }
    // 1. creating a variable to represent the file location
    
   
    
    // 2. tell the audio player the location of the file
    
    do{
        audioPlayer =  try AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    //code in here will throw errors
    }
    catch{
    print("error")
    }
    }
    

    @IBAction func playLentil(_ sender: UIButton) {
        
         let url = Bundle.main.url(forResource:"fart-squeak-01", withExtension:"mp3")
        // 2. tell the audio player the location of the file
        
        do{
            audioPlayer =  try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            //code in here will throw errors
        }
        catch{
            print("error")
        }
        
    }
    
    
    
    //3. play the sound

}

