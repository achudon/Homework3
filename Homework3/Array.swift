//
//  Array.swift
//  Homework3
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 Alyssa. All rights reserved.
//

import Foundation

// takes an array of Ints as a parameter, returns sum of all Ints in array
func add(numArray: [Int]) -> Int {
    var result = 0
    
    for index in 0...numArray.count {
        result += numArray[index]
    }
    
    return result
}

// takes an array of Ints as a parameter, returns product of all Ints in array

func multiply(numArray: [Int]) -> Int {
    var result = 0
    
    for index in 0...numArray.count {
        result *= numArray[index]
    }
    return result
}

// takes an array of Ints as a parameter, returns count of all Ints in array

func count(numArray: [Int]) -> Int {
    return numArray.count
}

// takes an array of Ints as a parameter, returns aerage of all elements in array

func average(numArray: [Int]) -> Int {
    let arraySum = add(numArray)
    let arrayCount = count(numArray)
    
    return arraySum / arrayCount
}

// take in an operand and an array of Ints as parameters, returns the result of that operation

func genericCalc(operand: String, numArray: [Int]) -> Int{
    switch operand {
        case "+":
            return add(numArray)
        case "*":
            return multiply(numArray)
        case "count":
            return count(numArray)
        case "avg":
            return average(numArray)
        default:
            print("Please enter valid values for an operation")
    }
    return 0
}

