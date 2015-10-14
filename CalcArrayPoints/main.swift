//
//  main.swift
//  CalcArrayPoints
//
//  Created by Rachel Kipps on 10/12/15.
//  Copyright © 2015 Rachel Kipps. All rights reserved.
//

import Foundation


// Part 1: Calculator
// Functions to add, subtract, multiply, and divide Integers.
func add(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

func subtract(num1 : Int, num2 : Int) -> Int {
    return num1 - num2
}

func multiply(num1 : Int, num2 : Int) -> Int {
    return num1 * num2
}

func divide(num1 : Int, num2 : Int) -> Int {
    return num1 / num2
}

func mathOp(num1 : Int, num2: Int, op : (Int, Int) -> Int) -> Int {
    return op(num1, num2)
}

// Part 1: Calculator testing
func testCalc() {
    print("\n1. Testing basic calculator functions with 2 random numbers between 0-100:")
    let num1 = getRand()
    let num2 = getRand()
    print("\t\(num1) + \(num2) = \(add(num1, num2: num2))")
    print("\t\(num1) - \(num2) = \(subtract(num1, num2: num2))")
    print("\t\(num1) * \(num2) = \(multiply(num1, num2: num2))")
    print("\t\(num1) / \(num2) = \(divide(num1, num2: num2))")
    
    print("\n2. Testing the generic mathOp function with the same numbers:")
    print("\t\(num1) + \(num2) = \(mathOp(num1, num2: num2, op: add))")
    print("\t\(num1) - \(num2) = \(mathOp(num1, num2: num2, op: subtract))")
    print("\t\(num1) * \(num2) = \(mathOp(num1, num2: num2, op: multiply))")
    print("\t\(num1) / \(num2) = \(mathOp(num1, num2: num2, op: divide))")
}

// Part 2: Array fun
// Functions to add, multiply, count, and average the Integers in an array.
func add(array: [Int]) -> Int {
    var result = 0
    for num in array {
        result += num
    }
    return result
}

func multiply(array: [Int]) -> Int {
    var result = 1
    if array.count == 0 {
        result = 0
    }
    for num in array {
        result *= num
    }
    
    return result
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array)/count(array)
}


func arrayOp(array: [Int], op: ([Int]) -> Int) -> Int {
    return op(array)
}

// Part 2: Array fun testing
func testArr() {
    var array: [Int] = []
    for var i = 0; i < 5; i++ {
        array.append(getRand())
    }
    print("\n3. Testing array functions with random array \(array):")
    print("\tSum: \(add(array))")
    print("\tProduct: \(multiply(array))")
    print("\tCount elements: \(count(array))")
    print("\tAverage: \(average(array))")
    
    print("\n4. Testing generic arrayOp function with the same array:")
    print("\tSum: \(arrayOp(array, op: add))")
    print("\tProduct: \(arrayOp(array, op: multiply))")
    print("\tCount elements: \(arrayOp(array, op: count))")
    print("\tAverage: \(arrayOp(array, op: average))")
}

// Part 3: Points
// Functions to add and subtract tuples representing coordinate pairs of Integers.
typealias Point = (x: Int, y: Int)

func add(point1: Point, point2: Point) -> Point {
    return (point1.x + point2.x, point1.y + point2.y)
}

func subtract(point1: Point, point2: Point) -> Point {
    return (point1.x - point2.x, point1.y - point2.y)
}

// Functions to add and subtract dictionaries representing coordinate pairs of Integers and Doubles.
func add(point1: Dictionary <String, Int>?, point2: Dictionary <String, Int>?) -> Dictionary <String, Int>? {
    if (coordinateIsNil(point1) || coordinateIsNil(point2)) {
        return nil
    }
    return [
        "x" : point1!["x"]! + point2!["x"]!,
        "y" : point1!["y"]! + point2!["y"]!,
    ]
}

func add(point1: Dictionary <String, Double>?, point2: Dictionary <String, Double>?) -> Dictionary <String, Double>? {
    if (coordinateIsNil(point1) || coordinateIsNil(point2)) {
        return nil
    }
    return [
        "x" : point1!["x"]! + point2!["x"]!,
        "y" : point1!["y"]! + point2!["y"]!,
    ]
}

func subtract(point1: Dictionary <String, Int>?, point2: Dictionary <String, Int>?) -> Dictionary <String, Int>? {
    if (coordinateIsNil(point1) || coordinateIsNil(point2)) {
        return nil
    }
    return [
        "x" : point1!["x"]! - point2!["x"]!,
        "y" : point1!["y"]! - point2!["y"]!,
    ]
}

func subtract(point1: Dictionary <String, Double>?, point2: Dictionary <String, Double>?) -> Dictionary <String, Double>? {
    if (coordinateIsNil(point1) || coordinateIsNil(point2)) {
        return nil
    }
    return [
        "x" : point1!["x"]! - point2!["x"]!,
        "y" : point1!["y"]! - point2!["y"]!,
    ]
}

// Checks if a coordinate (x, y) in the dictionary is nil.
func coordinateIsNil(d : Dictionary <String, AnyObject>?) -> Bool {
    if (d!["x"] == nil || d!["y"] == nil) {
        return true
    }
    return false
}

// Part 3: Points testing
func testPoints() {
    let point1 = (getRand(), getRand())
    let point2 = (getRand(), getRand())
    print("\n5. Testing tuple point functions for the following random coordinates:")
    print("\t Point 1: \(point1)")
    print("\t Point 2: \(point2)")
    print("\n\t \(point1) + \(point2) = \(add(point1, point2: point2))")
    print("\t \(point1) - \(point2) = \(subtract(point1, point2: point2))")
    
    print("\n6. Testing dictionary point functions for the following Integer dictionaries:")
    let d1 = [
        "x" : getRand(),
        "y" : getRand(),
    ]
    let d2 = [
        "x" : getRand(),
        "y" : getRand(),
    ]
    
    let d3 = [
        "x" : 1.1,
        "y" : 2.5,
    ]
    
    let d4 = [
        "x" : 4.3,
        "y" : 6.8,
    ]
    
    let d5 = [
        "x" : 5
    ]
    
    let d6 = [
        "y" : 6
    ]
    
    print("\t d1: \(d1)")
    print("\t d2: \(d2)")
    print("\t d3: \(d3)")
    print("\t d4: \(d4)")
    print("\t d5: \(d5)")
    print("\t d6: \(d6)")
    
    
    print("\n\tAdd and subtract for Int values:")
    print("\t \(d1) + \(d2) = \(add(d1, point2: d2)!)")
    print("\t \(d1) - \(d2) = \(subtract(d1, point2: d2)!)")
    print("\n\tAdd and subtract for Double values:")
    print("\t \(d3) + \(d4) = \(add(d3, point2: d4)!)")
    print("\t \(d3) - \(d4) = \(subtract(d3, point2: d4)!)")
    print("\n\tHandling nil x or y values")
    print("\t \(d1) + \(d5) = \(add(d1, point2: d5))")
    print("\t \(d1) - \(d6) = \(subtract(d1, point2: d6))")
    
}

// Function to generate a random integer between 1 and 15
func getRand() -> Int {
    return Int(arc4random_uniform(15)) + 1
}

testCalc()
testArr()
testPoints()
