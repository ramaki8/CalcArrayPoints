//
//  main.swift
//  CalcArrayPoints
//
//  Created by Rachel Kipps on 10/12/15.
//  Copyright © 2015 Rachel Kipps. All rights reserved.
//

import Foundation

func add(number1 : Int, number2 : Int) -> Int {
    return number1 + number2
}

func subtract(number1 : Int, number2 : Int) -> Int {
    return number1 - number2
}

func multiply(number1 : Int, number2 : Int) -> Int {
    return number1 * number2
}

func divide(number1 : Int, number2 : Int) -> Int {
    return number1 / number2
}

func mathOp(number1 : Int, number2: Int, op : (Int, Int) -> Int) -> Int {
    return op(number1, number2)
}

func addArr(array: [Int]) -> Int {
    var result = 0
    for number in array {
        result += number
    }
    return result
}

func multiplyArr(array: [Int]) -> Int {
    var result = 1
    if array.count == 0 {
        result = 0
    }
    for number in array {
        result *= number
    }
    
    return result
}

func countArr(array: [Int]) -> Int {
    return array.count
}

func avgArr(array: [Int]) -> Int {
    var total = 0
    for number in array {
        total += number
    }
    return total/array.count
}


func arrOp(array: [Int], op: ([Int]) -> Int) -> Int {
    return op(array)
}

var testArr = [1, 2, 3, 4]
var result = arrOp(testArr, op: multiplyArr)
print(result)
