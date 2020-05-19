//
//  ViewController.swift
//  BullsEye
//
//  Created by Beatrice Totanes on 17/05/2020.
//  Copyright © 2020 Beatrice Totanes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //@IBOutlet is a variable that the Interface Builder can see. W/o it the IB wouldn't recognize it
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    
    
    //The viewDidLoad() message is sent by UIKit immediately after the view controller loads is user interface from the storyboard file
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() { //Instructs interface builder; connected to "Hit Me" button
        //Displays "Hello World!" in bold when "Hit Me!" is clicked and to exit the alert pop-up, you have to hit "Awesome"
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil) //Click to exit the pop-up
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil) //Presents the alert message
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
}

