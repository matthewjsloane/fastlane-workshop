//
//  NavigationController.swift
//  WhichFruit
//
//  Created by Matthew Sloane on 9/8/16.
//  Copyright © 2016 Matthew Sloane. All rights reserved.
//

import UIKit

class NavigationController : UINavigationController {
    override func viewDidLoad() {
        self.performSegueWithIdentifier("whichFruit", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let whichFruitViewController = segue.destinationViewController as! WhichFruitViewController
        whichFruitViewController.assignFruitDeity(arc4random)
    }
}