import UIKit

struct LinkedList<Value> {
    var head :Node<Value>?
    var tail :Node<Value>?
    
    var isEmpty : Bool {
        return head == nil
    }
    
    init() { }
    
}

class Node<Value> {
    var value : Value
    var next : Node?
    
    init(value : Value, next :Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node :CustomStringConvertible {
    var description :String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

let list = LinkedList<Int>() 
