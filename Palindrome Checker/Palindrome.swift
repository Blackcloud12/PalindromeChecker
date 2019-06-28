//
//  Palindrome.swift
//  Palindrome Checker
//
//  Created by Daren Davis on 6/24/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import Foundation

func isPalindrome(input: String) -> Bool {
    let result = String(input.reversed())
    return result == input
}

func parseInput(input: String) -> String {
    var parsedString = ""
    for character in input {
        switch character {
        case "A"..."Z", "a"..."z", "0"..."9":
            parsedString += String(character)
        default:
            continue
        }
    }
    return parsedString.lowercased()
}
