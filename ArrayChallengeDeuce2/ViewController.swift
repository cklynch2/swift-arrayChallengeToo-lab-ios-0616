//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addNameToDeliLine(name: String) -> String {
        switch name {
        case "Billy Crystal", "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
        default:
            deliLine.append(name)
        }
        
        var greetPersonInLine : String = ""
        
        if (name == "Billy Crystal") {
            greetPersonInLine += "Welcome Billy! You can sit wherever you like."
        } else if (name == "Meg Ryan") {
            greetPersonInLine += "Welcome Meg! You can sit wherever you like."
        } else if (deliLine.indexOf(name) == 0) {
            greetPersonInLine += "Welcome \(name), you're first in line!"
        } else {
            let positionInLine = deliLine.indexOf(name)!
            greetPersonInLine += "Welcome \(name), you're number \(positionInLine + 1) in line."
        }
        return greetPersonInLine
    }
    
    func nowServing() -> String {
        if deliLine.isEmpty {
            return "There is no one to be served."
        } else {
            let nextPersonInLine = deliLine[0]
            deliLine.removeAtIndex(0)
            return "Now serving \(nextPersonInLine)!"
        }
    }
    
    func deliLineDescription() -> String {
        var deliLineDescription : String = ""
        
        if deliLine.isEmpty {
            deliLineDescription += "The line is currently empty."
        } else {
            deliLineDescription += "The line is:\n"
            for (index, name) in deliLine.enumerate() {
                deliLineDescription += "\(index + 1) \(name)\n"
            }
        }
        return deliLineDescription
    }
    
}

