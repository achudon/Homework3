//
//  main.swift
//  calculator-v2
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 Alyssa. All rights reserved.
//

import Foundation

// Basic Calculator 

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

// take in two Ints and a function as parameters, returns the result of that operation
func mathOp(num1: Int, num2: Int, op: (Int, Int) -> Int) -> Int {
    return op(num1, num2)
}

func testBasicCalc() {
    // test add function
    
    // add 1 + 1, answer: 2
    print("add 1 + 1, answer: 2")
    print(add(1, num2: 1))
    
    // add 5 + 7, answer: 13
    print("add 5 + 7, answer: 12")
    print(add(5, num2: 7))
    
    // add 5 + -1, answer: 4
    print("add 5 + -1, answer: 12")
    print(add(5, num2: -1))
    
    // test subtract function
    
    // subtract 1 - 5, answer -4
    print("subtract 1 - 5, answer -4")
    print(subtract(1, num2: 5))
    
    // subtract 1 - (-6), answer 7
    print("subtract 1 - (-6), answer 7")
    print(subtract(1, num2: -6))
    
    // test multiply function
    
    // multiply 2 * 5, answer 10
    print("multiply 2 * 5, answer 10")
    print(multiply(2, num2: 5))
    
    // multiply 10 * (-8), answer -80
    print("multiply 10 * (-8), answer -80")
    print(multiply(10, num2: -8))
    
    // multiply (-10) * (-8), answer 80
    print("multiply (-10) * (-8), answer 80")
    print(multiply(-10, num2: -8))
    
    // test divide function
    
    // divide 5 / 1, answer 5
    print("divide 5 / 1, answer 5")
    print(divide(5, num2: 1))
    
    // divide 10 / 3, answer 3
    print("divide 10 / 3, answer 3")
    print(divide(10, num2: 3))

}

testBasicCalc()


// Array Calculator
// takes an array of Ints as a parameter, returns sum of all Ints in array
func arrayAdd(numArray: [Int]) -> Int {
    var result = 0
    
    for index in 0...numArray.count {
        result += numArray[index]
    }
    
    return result
}

// takes an array of Ints as a parameter, returns product of all Ints in array

func arrayMultiply(numArray: [Int]) -> Int {
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

func arrayMathOp(numArray: [Int], op: ([Int]) -> Int) -> Int{
    return op(numArray)
}

func testArrayCalc() {
    
}

testArrayCalc()

// Tuple Points

typealias point = (Int, Int)

func addPoints(point1: point, point2: point) -> point{
    return (point1.0 + point2.0, point1.1 + point2.1)
}

func subtractPoints(point1: point, point2: point) -> point {
    return(point1.0 - point2.0, point1.1 - point2.1)
}

func testTuplePoints() {
    print("Testing tuple points")
}

testTuplePoints()

// Dictionary Points

func addPoints(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    if isNil(point1) || isNil(point2){
        print("Please enter valid input.")
        return nil
    }
    let newX = Int(point1["x"]! + point2["x"]!)
    let newY = Int(point1["y"]! + point2["y"]!)
    return ["x" : newX, "y" : newY]
}

func subtractPoints(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    if isNil(point1) || isNil(point2){
        print("Please enter valid input.")
        return nil
    }
    let newX = Int(point1["x"]! - point2["x"]!)
    let newY = Int(point1["y"]! - point2["y"]!)
    return ["x" : newX, "y" : newY]
}

func isNil(point: Dictionary<String, Int>) -> Bool {
    return point["x"] == nil || point["y"] == nil
}

func testDictionaryPoints() {
    
}

testDictionaryPoints()