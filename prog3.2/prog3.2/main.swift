import Foundation

var x: Int?

x = nil

print("x=\(x as Int?)")

if x == nil {
    print("x has no value")
} else {
    print("x has a value of \(x!)")
}

x = 3

print("x=\(x as Int?)")

if let xunwrapped = x {
    print("x has a value of\(xunwrapped)")
} else {
    print("x has no value")
}

var z: Fraction?

z = Fraction(num: 1, den: 3)

print("z=\(z as Fraction?)")

if let zu = z {
    print("z has a value of \(zu)")
    print("The decimal property of z's value is \(zu.decimal)")
} else {
    print("z has no value")
}
