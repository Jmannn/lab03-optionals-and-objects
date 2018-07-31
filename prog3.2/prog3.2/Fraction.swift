//
//  Fraction.swift
//  prog2.1
//
//  Created by Johnathan Mann on 7/25/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//

import Foundation

class Fraction : CustomStringConvertible {
    
    private let num: Int;
    private let den: Int;
    
    var decimal: Float {
        get {
            return Float(self.num)/Float(self.den);
        }
    }
    
    var description: String {
        
        if (abs(self.num) > self.den && self.den > 1){
            print("hello")
            return "\(self.num/self.den) " + "\(self.num%self.den)" + "/\(self.den)";

        }else if(abs(self.num) > self.den){
            print("hello")
            return "\(self.num/self.den) ";
            
        }        else{
            return "\(self.num)/\(self.den)";
        }
    }
    

    init(num : Int, den : Int){
        assert(den != 0, "Denominator cannot be zero")
        
        var num = num
        var den = den
        
        if(den < 0) {
            
            num = -num
            den = -den
        }
        
        
        for gcd in (1...den).reversed() {
            if(num%gcd == 0 && den%gcd==0) {
                
                num /= gcd
                den /= gcd
                break
            }
        }
        self.num = num
        self.den = den
    }
    
    convenience init(num : Int){
        self.init(num: num, den: 1);
    }
    convenience init(){
        self.init(num: 0, den: 1)
    }
    
    func add(_ f: Fraction) -> Fraction {
        return Fraction (num: self.num*f.den + self.den*f.num,
                  den: self.den*f.den)
    }
    
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                  den: self.den*f.den)
    }
    
    func multiply(_ f: Fraction)-> Fraction {
        return Fraction(num: self.num*f.num,den: self.den*f.den)
    }
    
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    static func add(_ f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num, den: f1.den*f2.den)
    }
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    static func divide(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    func add(_ x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    func subtract(_ x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    func multiply(_ x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    func divide(_ x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
    
}
func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
}
func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
}
func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
}
func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
}

func +(f1: Fraction, f2: Int) -> Fraction {
    return f1.add(f2)
}
func -(f1: Fraction, f2: Int) -> Fraction {
    return f1.subtract(f2)
}
func *(f1: Fraction, f2: Int) -> Fraction {
    return f1.multiply(f2)
}
func /(f1: Fraction, f2: Int) -> Fraction {
    return f1.divide(f2)
}
