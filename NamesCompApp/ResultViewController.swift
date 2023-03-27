//
//  ResultViewController.swift
//  NamesCompApp
//
//  Created by Denis Kitaev on 23.03.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var namesLabel: UILabel!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var resultLabel: UILabel!
    
    var firstName: String!
    var secondName: String!
    
    var resultValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    private func findValue(for name: String) -> Int {
        var count = 0
        for character in name.lowercased(){
            switch character {
            case "i", "j", "q", "y":
                count += 1
            case "m", "n", "g":
                count += 3
            case "r", "l", "b", "o":
                count += 5
            case "v", "c", "a", "s":
                count += 8
            case "z":
                count += 10
            default:
                count += 0
            }
        }
        return count
    }
    
    private func findResult() -> Int {
        var result = 0
        
        let firstValue = findValue(for: firstName)
        let secondValue = findValue(for: secondName)
        let absDifference = abs(firstValue - secondValue)
        
        switch absDifference {
        case 0, 1, 2 ,3:
            result = 15
        case 5, 6:
            result = 45
        case 7, 8:
            result = 65
        case 9, 10:
            result = 85
        case 11, 12, 13:
            result = 100
        default:
            result = 30
            
        }
        return result
    }

}
