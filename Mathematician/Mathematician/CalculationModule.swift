//
//  CalculationModule.swift
//  Mathematician
//
//  Created by Никита Журавлев on 18.09.2018.
//  Copyright © 2018 Никита Журавлев. All rights reserved.
//

import Foundation

class Calculation{
    
    public var num1: Int
    public var num2: Int
    
    init(num1: Int, num2: Int){
        self.num1 = num1
        self.num2 = num2
    }
    
    public func summation(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    public func sub(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    
    public func multyplicate(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
    
    public func divideBy(num1: Int, num2: Int) -> Int {
        return num1 / num2
    }
    
    public func extraDivide(num1: Int, num2: Int) -> Int {
        return num1 % num2
    }
}
