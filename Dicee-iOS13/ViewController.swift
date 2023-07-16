//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView2: UIImageView!//IBOutlet is made my holding contril key and dragging image to the code
    @IBOutlet weak var diceImageView1: UIImageView!//var is used for variables as they are changed
  
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]//let is used for constants as they are not changed
        
        diceImageView1.image = diceArray.randomElement()//method of randomization
        diceImageView2.image = diceArray[Int.random(in: 0...5)]//method of randlomization
//      Float.random(in: 0...3) would generate a float number between the given range
//      Int.random(in: 0..<3) would generate 0, 1 or 2 but not 3
//      Bool.random() has no range
//      array.shuffle() shufffles all the elements in the array by changing their positions
    }
    

}

