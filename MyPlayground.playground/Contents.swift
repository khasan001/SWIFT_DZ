import UIKit

struct Circle {
    
    var radius: Float = 10
    
    var area: Float {
        return Float.pi * radius * radius
    }
}



struct Stack<T>: CustomStringConvertible {
    
    var array = [T]()
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T {
        return array.removeLast()
    }
    
    var description: String {
        return "\(array)"
    }
    
}

var stackOffInts = Stack<Int>()
stackOffInts.push(1)
stackOffInts.push(2)
stackOffInts.push(3)
stackOffInts.push(4)
print(stackOffInts.description)

var stackOffString = Stack<String>()
stackOffString.push("Равносторонний")
stackOffString.push("Равнобедренний")
print(stackOffString.description)

let even: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 == 0
}

let odd: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 != 0
}
var array = [1,2,3,4,5,6,7,8,9,10]
func filter(array: [Int], predicate: (Int) -> Bool ) -> [Int] {
    var tmpArray = [Int]()
    for element in array {
        if predicate(element) {
            tmpArray.append(element)
        }
    }
    return tmpArray
}
filter(array: array, predicate: even)
filter(array: array, predicate: odd)
