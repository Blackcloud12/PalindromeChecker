//
//  ViewController.swift
//  Palindrome Checker
//
//  Created by Daren Davis on 6/24/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    @IBOutlet weak var failLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        successLabel.isHidden = true
//        failLabel.isHidden = true
        resetState()
    }
    
    @IBAction func buttonClicked() {
        resetState()
        userInput = textField.text!
        let modifiedInput = parseInput(input: userInput)
        if  isPalindrome(input: modifiedInput) {
            successLabel.isHidden = false
        } else {
            failLabel.isHidden = false
        }
        textField.text = ""
    }
    
    func resetState() {
        successLabel.isHidden = true
        failLabel.isHidden = true
        
        userInput = ""
    }
}

