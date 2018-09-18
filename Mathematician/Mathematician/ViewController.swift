//
//  ViewController.swift
//  Mathematician
//
//  Created by Никита Журавлев on 14.09.2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tempIndexOfOperds: Int = 0
    var urAnswer: Int = 0
    var resCalc = Calculation(num1: 0, num2: 0)
    var operationRes: Int = 0

    @IBOutlet weak var exmplLblb: UILabel!
    @IBOutlet weak var urAns: UITextField!
    
    @IBAction func rfrshExmpl(_ sender: UIButton) {
        
        tempIndexOfOperds = Int.random(in: 0...4)
        resCalc.num1 = Int.random(in: 0..<10001)
        resCalc.num2 = Int.random(in: 0..<10001)
        
        switch tempIndexOfOperds{
        case 0:
            operationRes = resCalc.summation(num1: resCalc.num1, num2: resCalc.num2)
            exmplLblb.text = "\(resCalc.num1) + \(resCalc.num2)"
        case 1:
            operationRes = resCalc.sub(num1: resCalc.num1, num2: resCalc.num2)
            exmplLblb.text = "\(resCalc.num1) - \(resCalc.num2)"
        case 2:
            operationRes = resCalc.multiplicate(num1: resCalc.num1, num2: resCalc.num2)
            exmplLblb.text = "\(resCalc.num1) * \(resCalc.num2)"
        case 3:
            operationRes = resCalc.divideBy(num1: resCalc.num1, num2: resCalc.num2)
            exmplLblb.text = "\(resCalc.num1) / \(resCalc.num2)"
        case 4:
            operationRes = resCalc.extraDivide(num1: resCalc.num1, num2: resCalc.num2)
            exmplLblb.text = "\(resCalc.num1) % \(resCalc.num2)"
        default:
            operationRes = 0
        }
    }
    
    @IBAction func answrTxt(_ sender: UITextField) {
        urAnswer = Int(urAns.text ?? "0")!
    }
    
    @IBAction func chckBtn(_ sender: UIButton) {
        view.endEditing(true)
        if urAnswer == operationRes{
            let alertSuccess = UIAlertController(
                title: "Resolution",
                message: "You are correct",
                preferredStyle: UIAlertController.Style.alert)
            alertSuccess.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertSuccess, animated: true, completion: nil)
        } else {
            let alertFail = UIAlertController(
                title: "Resolution",
                message: "You're not correct",
                preferredStyle: UIAlertController.Style.alert)
            alertFail.addAction(UIAlertAction(title: "Go back", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertFail, animated: true, completion: nil)
        }
    }
}

