//
//  ViewController.swift
//  Kim calculator
//
//  Created by Александр Ляхов on 06.09.2021.
//

import UIKit
class ViewController: UIViewController {
    var FirstNumber: String = ""
    var SecondNumber: String = ""
    var Operand: String = ""
    var ResultIput: String = ""

    
    @IBOutlet weak var OutNumberLabel: UILabel!
    
    @IBOutlet weak var buttonResult: UIButton!
    @IBOutlet weak var Inputbutton: UIButton!
    
    @IBAction func EventButtonInput(_ sender: UIButton) {
        if Operand.isEmpty{
            FirstNumber += (sender.titleLabel?.text)!
            OutNumberLabel.text = FirstNumber
            buttonResult.isEnabled = true
        }else{
            SecondNumber += (sender.titleLabel?.text)!
            OutNumberLabel.text = SecondNumber
            
        }
    }
    
    @IBAction func ClearNumber(_ sender: Any) {
        FirstNumber = ""
        SecondNumber = ""
        Operand = ""
        ResultIput = ""
        OutNumberLabel.text = "0"
    }
  
    @IBAction func InputOperand(_ sender: Any) {
        var resultDouble = 0.0
        switch Operand {
        case "*":
            resultDouble = Double(FirstNumber)! * Double(SecondNumber)!
        case "/":
            resultDouble = Double(FirstNumber)! / Double(SecondNumber)!
        case "+":
            resultDouble = Double(FirstNumber)! + Double(SecondNumber)!
        case "-":
            resultDouble = Double(FirstNumber)! - Double(SecondNumber)!
        default:
            break
        }
        if resultDouble.truncatingRemainder(dividingBy: 1.0) == 0.0{
            OutNumberLabel.text = String(Int(resultDouble))
        }else {
            OutNumberLabel.text = String(resultDouble)

        }

    }
    @IBAction func Result(_ sender: UIButton) {
        Operand = (sender.titleLabel?.text)!
    }
    
}


