import UIKit

struct LinkedList<Value> {
    var head :Node<Value>?
    var tail :Node<Value>?
    
    var isEmpty : Bool {
        return head == nil
    }
    
    mutating func push(_ value: Value) {
        
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
            
        }
    }
    
    mutating func append(_ value :Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        let node = Node(value: value)
        tail!.next = node
        tail = node
    }
    
    init() { }
    
}

extension LinkedList :CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
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

var list = LinkedList<Int>()

list.push(2)
list.push(3)
list.push(22)
list.push(54)

list.append(99)
list.append(56)
list.append(45)

print(list)
