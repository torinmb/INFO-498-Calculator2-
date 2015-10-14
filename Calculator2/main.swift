//
//  main.swift
//  Calculator2
//
//  Created by blankens on 10/11/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation

print("WHOOO, Calculator FTW!")

func add(num1: Int?, num2: Int?) ->Int? {
    if num1 != nil && num2 != nil {
        return num1! + num2!
    } else {
        return nil
    }
}

func subtract(num1: Int?, num2: Int?) ->Int? {
    if num1 != nil && num2 != nil {
        return num1! - num2!
    } else {
        return nil
    }
}

func multiply(num1: Int?, num2: Int?) ->Int? {
    if num1 != nil && num2 != nil {
        return num1! / num2!
    } else {
        return nil
    }
}

func divide(num1: Int?, num2: Int?) ->Int? {
    if num1 != nil && num2 != nil {
        return Int(round(Double(num1!) / Double(num2!)))
    } else {
        return nil
    }
}


func operation(op: (Int?, Int?) -> Int?, num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return op(num1!, num2!)
    } else {
        return nil
    }
}

//Array Methods

func add(arr : [Int]?) -> Int? {
    if arr != nil {
        return (arr!.reduce(0, combine: +))
    } else {
        return nil
    }
}


func mul(arr : [Int]?) -> Int? {
    if arr != nil {
        return (arr!.reduce(1, combine: *))
    } else {
        return nil
    }
}

func count(arr : [Int]?) -> Int? {
    if arr != nil {
        return (arr!.count)
    } else {
        return nil
    }
}

func avg(arr : [Int]?) -> Int? {
    if arr != nil {
        return add(arr!)!/count(arr)!
    } else {
        return nil
    }
}

func operation(op: ([Int]?) -> Int?, nums: [Int]?) -> Int? {
    if nums != nil {
        return op(nums!)
    } else {
        return nil
    }
}

// Touples

//this feels like overkill
func add(pointOne : (x : Int?, y: Int?)?, pointTwo : (x : Int?, y: Int?)?) -> (Int, Int)? {
    if pointOne != nil && pointTwo != nil &&
        pointOne!.x != nil && pointOne!.y != nil &&
        pointTwo!.x != nil && pointTwo!.y != nil {
        return (pointOne!.x! + pointTwo!.x!, pointOne!.y! + pointTwo!.y!)
    } else{
        return nil
    }
}

func sub(pointOne : (x : Int?, y: Int?)?, pointTwo : (x : Int?, y: Int?)?) -> (Int, Int)? {
    if pointOne != nil && pointTwo != nil &&
        pointOne!.x != nil && pointOne!.y != nil &&
        pointTwo!.x != nil && pointTwo!.y != nil {
            return (pointOne!.x! - pointTwo!.x!, pointOne!.y! - pointTwo!.y!)
    } else {
        return nil
    }
}

func opPoints(p1: [String: Double?]?, p2: [String: Double?]?, op:String) -> (Double, Double)? {
    if p1 != nil && p2 != nil {
        if let x1 = p1!["x"]!, y1 = p1!["y"]!, x2 = p2!["x"]!, y2 = p2!["y"]! {
            var point = (x: 0.0, y: 0.0)
            if op == "+" {
                point.0 = x1 + x2
                point.1 = y1 + y2
                return point
            } else if op == "-" {
                point.0 = x1 - x2
                point.1 = y1 - y2
                return point
            }
        }
        return nil
    } else {
        return nil
    }
}

func addPoints(p1: [String: Double?]?, p2: [String: Double?]?) -> (Double, Double)? {
    return opPoints(p1, p2: p2, op: "+")
}

func subtractPoints(p1: [String: Double?]?, p2: [String: Double?]?) -> (Double, Double)? {
    return opPoints(p1, p2: p2, op: "-")
}

print("Add 1 + 2: \(add(1, num2: 2)!)")
print("Subtarct 1 - 2 : \(subtract(1, num2: 2)!)")
print("Add nill: \(add(nil, num2: nil))")
print("Subtarct nill: \(subtract(nil, num2: nil))")
print("Multiply 2 * 2: \(multiply(2, num2: 2)!)")
print("Devide 2 / 2: \(divide(2, num2: 2)!)")

print("operation(Devide) 2 / 2: \(operation(divide, num1: 8, num2: 4)!)")
print("Arrays:")
print("Add [1, 2, 3, 4]:\(add([1, 2, 3, 4])!)")
print("Add nil :\(add(nil))")
print("Multiply [1, 2, 3, 4]:\(mul([1, 2, 3, 4])!)")
print("Multiply nil:\(mul(nil))")
print("Count [1, 2, 3, 4] :\(count([1, 2, 3, 4])!)")
print("Count nil \(count(nil))")
print("Average [1, 2, 3, 4] :\(avg([1, 2, 3, 4])!)")
print("Average nil :\(avg(nil))")
print("Operation(avg, [1, 2, 3, 4]) :\(operation(avg, nums: [1, 3, 4, 4])!)")
print("TOUPLES!")
print("Add (1, 2), (1, 2) \(add((1, 2), pointTwo : (1,2))!))")
print("Subtract (1, 2), (1, 2) \(sub((1, 2), pointTwo : (1,2))!))")
print("Dictionary")
let a : [String: Double?] = ["x": 4.0, "y": 5.0]
let b : [String: Double?] = ["x": 4.0, "y": 8.0]
//print(addPoints(a, p2: b)!)
print("Add Points [x: 4, y: 5], [x: 4, y: 8] \(addPoints(a, p2: b)!))")
print("Add Points nil: \(addPoints(nil, p2: nil))")
print("Subtract Points [x: 4, y: 5], [x: 4, y: 8] \(subtractPoints(a, p2: b)!))")
print("Subtract Points nil: \(subtractPoints(nil, p2: nil))")



