//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Bijan Fazeli on 11/28/17.
//  Copyright © 2017 Fazeli, Bijan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Array to hold all the different ball images
    var ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
    }
    
}

