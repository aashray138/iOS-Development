//
//  ViewController.swift
//  additionGame
//
//  Created by aashray Shrestha on 5/11/20.
//  Copyright © 2020 Aashray Shrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var scoreView: UILabel!
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
    var answer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startPressed(_ sender: UIButton) {
        
        let number = Int.random(in: 0 ... 21)
         number1.text = String(number)
        
        let numbers = Int.random(in: 0 ... 20)
        number2.text = String(numbers)
        
        let answerInPlace = Int.random(in: 0 ... 4)
      
        if(answerInPlace == 0){
        let total = number + numbers
        choice1.setTitle(String(total), for: .normal)
        choice2.setTitle(String(Int.random(in: 0 ... total)), for: .normal)
        choice3.setTitle(String(Int.random(in: total ... total+10)), for: .normal)
        choice4.setTitle(String(Int.random(in: 0 ... total+3)), for: .normal)
        }
        else if(answerInPlace == 1){
        let total = number + numbers
        choice2.setTitle(String(total), for: .normal)
        choice1.setTitle(String(Int.random(in: 0 ... total)), for: .normal)
        choice3.setTitle(String(Int.random(in: 0 ... total+10)), for: .normal)
        choice4.setTitle(String(Int.random(in: 0 ... total+3)), for: .normal)
        }
        else if(answerInPlace == 2){
        let total = number + numbers
        choice3.setTitle(String(total), for: .normal)
        choice2.setTitle(String(Int.random(in: 0 ... total)), for: .normal)
        choice1.setTitle(String(Int.random(in: 0 ... total+10)), for: .normal)
        choice4.setTitle(String(Int.random(in: 0 ... total+3)), for: .normal)
        }
        else if(answerInPlace == 3){
        let total = number + numbers
        choice4.setTitle(String(total), for: .normal)
        choice2.setTitle(String(Int.random(in: 0 ... total)), for: .normal)
        choice3.setTitle(String(Int.random(in: 0 ... total+10)), for: .normal)
        choice1.setTitle(String(Int.random(in: 0 ... total+3)), for: .normal)
        }
        
    }
    
    @IBAction func answerSelected(_ sender: UIButton) {
        
    }
}

