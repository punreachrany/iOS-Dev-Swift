//
//  main.swift
//  Function Playground
//
//  Created by Punreach Rany on 2020/12/27.
//

import Foundation


func calculator(n1: Int, n2: Int, operation: (Int, Int)->Int) -> Int {
    return operation(n1,n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1+no2
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1*n2
}


// This is more readable
print("Add : ",calculator(n1: 2, n2: 3, operation: add))
print("Multiply : ", calculator(n1: 2, n2: 3, operation: multiply))



print("Add With Closure : ", calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1+no2
}))

print("Multiply With Closure : ", calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1*no2
}))


print("Short : ", calculator(n1: 2, n2: 3, operation: {$0 * $1}))

let result = calculator(n1: 2, n2: 3) {$0 * $1}
print("Result : ", result)

let array = [6,2,3,9,4,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

print("Array and Map", array.map(addOne))

print("Array and Map and Closure", array.map(
    {(n1) -> String in
        return "\(n1 + 1)"
    }
))



