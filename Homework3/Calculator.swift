//
//  File.swift
//  Homework3
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 Alyssa. All rights reserved.
//

import Foundation

// takes two Ints as parameters, returns the Int sum of the two numbers
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

// takes two Ints as parameters, returns an Int, the result of (first number) - (second number)
func subtract(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

// takes two Ints as parameters, returns the Int product of the two numbers
func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

// takes two Ints as parameters, returns the Int quotient of the two numbers
func divide(num1: Int, num2: Int) -> Int {
    return num1 / num2
}

// take in an operand and two Ints as parameters, returns the result of that operation
func genericCalc(operand: String, num1: Int, num2: Int) -> Int {
    switch operand {
    case "+":
        return add(num1, num2: num2)
    case "-":
        return subtract(num1, num2: num2)
    case "*":
        return multiply(num1, num2: num2)
    case "/":
        return divide(num1, num2: num2)
    default:
        print("Can't complete operation with given values.")
    }
    return 0
}