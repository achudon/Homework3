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
    print("add 5 + -1, answer: 4")
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
    
    // test generic functions
    
    // add 5 + 7, answer: 13
    print("add 5 + 7, answer: 12")
    print(mathOp(5, num2: 7, op: add))
    
    // subtract 1 - (-6), answer 7
    print("subtract 1 - (-6), answer 7")
    print(mathOp(1, num2: -6, op: subtract))
    
    // multiply 10 * (-8), answer -80
    print("multiply 10 * (-8), answer -80")
    print(mathOp(10, num2: -8, op: multiply))
    
    // divide 5 / 1, answer 5
    print("divide 5 / 1, answer 5")
    print(mathOp(5, num2: 1, op: divide))

}

testBasicCalc()


// Array Calculator
// takes an array of Ints as a parameter, returns sum of all Ints in array
func arrayAdd(numArray: [Int]) -> Int {
    var result = 0
    
    for element in numArray {
        result += element
    }
    
    return result
}

// takes an array of Ints as a parameter, returns product of all Ints in array

func arrayMultiply(numArray: [Int]) -> Int {
    if numArray.count > 0 {
        var result = numArray[0]
        
        for var i = 1; i < numArray.count; i++ {
            result *= numArray[i]
        }
        return result
    }
    return 0
}

// takes an array of Ints as a parameter, returns count of all Ints in array

func count(numArray: [Int]) -> Int {
    return numArray.count
}

// takes an array of Ints as a parameter, returns aerage of all elements in array

func average(numArray: [Int]) -> Int {
    let arrayCount = count(numArray)
    if !(arrayCount == 0) {
        let arraySum = arrayAdd(numArray)
        return arraySum / arrayCount
    }
    return 0
}


// take in an operand and an array of Ints as parameters, returns the result of that operation

func arrayMathOp(numArray: [Int], op: ([Int]) -> Int) -> Int{
    return op(numArray)
}

func testArrayCalc() {
    // test add function
    
    // add 1 + 1, answer: 2
    print("add 1 + 1, answer: 2")
    print(arrayAdd([1, 1]))
    
    // add 5 + 7, answer: 15
    print("add 5 + 7 + 3, answer: 15")
    print(arrayAdd([5, 7, 3]))
    
    // add 5 + -1 + 10, answer: 14
    print("add 5 + -1 + 10, answer: 14")
    print(arrayAdd([5, -1, 10]))
    
    // test multiply function
    
    // multiply 2 * 0, answer 0
    print("multiply 2 * 0, answer 0")
    print(arrayMultiply([2, 0]))
    
    // multiply 10 * (-8) * 2, answer -160
    print("multiply 10 * (-8) * 2, answer -160")
    print(arrayMultiply([10, -8, 2]))
    
    // multiply (-10), answer nil
    print("multiply (-10)")
    print(arrayMultiply([-10]))
    
    // test count function
    
    // count array with numbers, answer 6
    print("count numbers in [1, 2, 3, 4, 5, 6], answer 6")
    print(count([1, 2, 3, 4, 5, 6]))
    
    // count empty array, answer 0
    print("count numbers in [], answer 0")
    print(count([]))
    
    // test average function
    
    // take average of these numbers [1, 2, 3, 4, 5, 6], answer 6
    print("take average of these numbers [1, 2, 3, 4, 5, 6], answer 6")
    print(average([1, 2, 3, 4, 5, 6]))
    
    // take average of empty array
    print("take average of these numbers []")
    print(average([]))
    
    // test generic function
    
    // generic add 5 + -1 + 10, answer: 14
    print("generic add 5 + -1 + 10, answer: 14")
    print(arrayMathOp([5, -1, 10], op: arrayAdd))
    
    // generic multiply 10 * (-8) * 2, answer -160
    print("generic multiply 10 * (-8) * 2, answer -160")
    print(arrayMathOp([10, -8, 2], op: arrayMultiply))
    
    // generic count array with numbers, answer 6
    print("generic count numbers in [1, 2, 3, 4, 5, 6], answer 6")
    print(arrayMathOp([1, 2, 3, 4, 5, 6], op: count))
    
    // generic take average of these numbers [1, 2, 3, 4, 5, 6], answer 6
    print("generic take average of these numbers [1, 2, 3, 4, 5, 6], answer 3")
    print(arrayMathOp([1, 2, 3, 4, 5, 6], op: average))
}

testArrayCalc()

// Tuple Points

typealias point = (Int, Int)

func tupleAddPoints(point1: point, point2: point) -> point{
    return (point1.0 + point2.0, point1.1 + point2.1)
}

func tupleSubtractPoints(point1: point, point2: point) -> point {
    return(point1.0 - point2.0, point1.1 - point2.1)
}

func testTuplePoints() {
    // test adding points
    
    // add (0, 0) and (0, 0), answer (0, 0)
    print("add (0, 0) and (0, 0), answer (0, 0)")
    print(tupleAddPoints((0, 0), point2: (0,0)))
    
    // add (1, 7) and (2, 9), answer (3, 16)
    print("add (1, 7) and (2, 9), answer (3, 16)")
    print(tupleAddPoints((1, 7), point2: (2, 9)))
    
    // add (-10, 4) and (2, -9), answer (-8, -5)
    print("add (-10, 4) and (2, -9), answer (-8, -5)")
    print(tupleAddPoints((-10, 4), point2: (2, -9)))
    
    // test subtracting points
    
    // subtract (0, 0) and (0, 0), answer (0, 0)
    print("subract (0, 0) and (0, 0), answer (0, 0)")
    print(tupleSubtractPoints((0, 0), point2: (0,0)))
    
    // subtract (1, 7) and (2, 9), answer (-1, -2)
    print("subtract (1, 7) and (2, 9), answer (-1, -2)")
    print(tupleSubtractPoints((1, 7), point2: (2, 9)))
    
    // subtract (-10, 4) and (2, -9), answer (-12, 13)
    print("subtract (-10, 4) and (2, -9), answer (-12, 13)")
    print(tupleSubtractPoints((-10, 4), point2: (2, -9)))
}

testTuplePoints()

// Dictionary Points

func addPoints(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    if isNil(point1) || isNil(point2){
        print("Please enter valid input.")
        return nil
    }
    let newX = point1["x"]! + point2["x"]!
    let newY = point1["y"]! + point2["y"]!
    return ["x" : newX, "y" : newY]
}

func subtractPoints(point1: Dictionary<String, Int>, point2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    if isNil(point1) || isNil(point2){
        print("Please enter valid input.")
        return nil
    }
    let newX = point1["x"]! - point2["x"]!
    let newY = point1["y"]! - point2["y"]!
    return ["x" : newX, "y" : newY]
}

func isNil(point: Dictionary<String, Int>) -> Bool {
    return point["x"] == nil || point["y"] == nil
}

func testDictionaryPoints() {
    print("Testing dictionary points")
    // test adding points
    
    // add (0, 0) and (0, 0), answer (0, 0)
    print("add (0, 0) and (0, 0), answer (0, 0)")
    print(addPoints(["x" : 0, "y" : 0], point2: ["x" : 0, "y" : 0])!)
    
    // add (1, 7) and (2, 9), answer (3, 16)
    print("add (1, 7) and (2, 9), answer (3, 16)")
    print(addPoints(["x" : 1, "y" : 7], point2: ["x" : 2, "y" : 9])!)
    
    // add (-10, 4) and (2, -9), answer (-8, -5)
    print("add (-10, 4) and (2, -9), answer (-8, -5)")
    print(addPoints(["x" : -10, "y" : 4], point2: ["x" : 2, "y" : -9])!)
    
    // test subtracting points
    
    // subtract (0, 0) and (0, 0), answer (0, 0)
    print("subract (0, 0) and (0, 0), answer (0, 0)")
    print(subtractPoints(["x" : 0, "y" : 0], point2: ["x" : 0, "y" : 0])!)
    
    // subtract (1, 7) and (2, 9), answer (-1, -2)
    print("subtract (1, 7) and (2, 9), answer (-1, -2)")
    print(subtractPoints(["x" : 1, "y" : 7], point2: ["x" : 2, "y" : 9])!)
    
    // subtract (-10, 4) and (2, -9), answer (-12, 13)
    print("subtract (-10, 4) and (2, -9), answer (-12, 13)")
    print(subtractPoints(["x" : -10, "y" : 4], point2: ["x" : 2, "y" : -9])!)
    
    // try to add points without an "X" coordinate
    // add (7) and (2, 9), answer nil
    print("add (7) and (2, 9), nil")
    print(addPoints(["y" : 7], point2: ["x" : 2, "y" : 9]))
    
    // try to subtract points without an "Y" coordinate
    // add (1, 7) and (2, 9), answer nil
    print("add (7) and (2, 9), nil")
    print(addPoints(["x" : 1], point2: ["x" : 2, "y" : 9]))
}

testDictionaryPoints()
