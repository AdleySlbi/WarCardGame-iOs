//
//  ViewController.swift
//  WarCardGame
//
//  Created by AdleySalabi on 07/07/2020.
//  Copyright © 2020 AdleySalabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Track the score
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Random the card that will be show
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image view with the random number
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Check the statement of the card to get a winner
        if leftNumber > rightNumber {
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            // Ride side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else {
            // Tie
        }
        
    }
    
}
