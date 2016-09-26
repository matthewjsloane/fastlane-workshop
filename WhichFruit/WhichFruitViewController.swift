//
//  WhichFruitViewController.swift
//  WhichFruit
//
//  Created by Matthew Sloane on 9/8/16.
//  Copyright © 2016 Matthew Sloane. All rights reserved.
//

import UIKit

class WhichFruitViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var fruitDeity: () -> (UInt32) = {0}
    var counter = 0
    
    @IBAction func fruitTapped(sender: UIButton) {
        let fruitAnswer = correctFruitTapped()
        counter = fruitAnswer ? counter + 1 : 0
        answerLabel.text = "\(fruitAnswer)"
        scoreLabel.text = "Score: \(counter)"
        answerLabel.alpha = 1.0
        
        UIView.animateWithDuration(1.0, delay: 0.2, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.answerLabel.alpha = 0.0
            }, completion: nil
        )
    }
    
    func correctFruitTapped() -> Bool {
        return self.fruitDeity() % 2 == 0
    }
    
    func assignFruitDeity(fruitDeity: () -> UInt32) {
        self.fruitDeity = fruitDeity
    }
}
