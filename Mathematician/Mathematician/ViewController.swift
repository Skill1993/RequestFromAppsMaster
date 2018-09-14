//
//  ViewController.swift
//  Mathematician
//
//  Created by Никита Журавлев on 14.09.2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var num1: Int = 0
    var num2: Int = 0
    var sum: Int = 0
    var urAnswer: Int = 0
    
    @IBOutlet weak var exmplLblb: UILabel!
    @IBOutlet weak var urAns: UITextField!
    
    @IBAction func rfrshExmpl(_ sender: UIButton) {
        num1 = Int.random(in: 0..<101)
        num2 = Int.random(in: 0..<101)
        sum = num1 + num2
        
        exmplLblb.text = ("\(num1) + \(num2)")
    }
    
    @IBAction func answrTxt(_ sender: UITextField) {
        urAnswer = Int(urAns.text ?? "0")!
    }
    
    @IBAction func chckBtn(_ sender: UIButton) {
        view.endEditing(true)
        if urAnswer == sum{
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

