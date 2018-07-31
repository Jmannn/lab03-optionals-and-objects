import Foundation

class SimpleOptional : CustomStringConvertible {
    
    let value: Any
    let hasValue: Bool
    
    var unwrap: Any {
        
        assert(self.hasValue, "fatal error: cannot unwrap a NIL")
        
        return self.value
    }
    
    var description: String {
        if self.hasValue {
            return "SimpleOptional(\(self.value))"
        } else {
            return "nil"
        }
    }
    fileprivate init() {
        self.value = "Undefined"
        self.hasValue = false
    }
    init(value: Any) {
        self.value = value
        self.hasValue = true
    }
    
}

func == (left: SimpleOptional, right: SimpleOptional) -> Bool {
    if right.hasValue == left.hasValue {
        return true
    } else {
        return false
    }
}

func != (left: SimpleOptional, right: SimpleOptional) -> Bool {
    return !(left == right)
}

let NIL: SimpleOptional = SimpleOptional()
