//
//  ViewController.swift
//  lesson4
//
//  Created by hafied Khalifatul ash.shiddiqi on 09/10/20.
//  Copyright © 2020 hafied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftnumber)")
        rightImageView.image = UIImage(named: "card\(rightnumber)")
        
        //compare the random number
        if leftnumber > rightnumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftnumber < rightnumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            //tie
        }
    }
    

}

