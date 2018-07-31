import Foundation

/**
 Represents a complex number
 
 */
class Complex : CustomStringConvertible {
    
    // STORED PROPERTIES
    
    var real: Float;   // Real part of the number
    var imag: Float;   // Imaginary part of the number
    
    // COMPUTED PROPERTIES
    
    /**
     - returns: Float Magnitude of the complex number
     */
    var magnitude: Float {
        //## IMPLEMENT ##//
        return (self.real * self.real) + (self.imag * self.imag);
    }
    
    /**
     - returns: String String representation of a complex number
     */
    var description: String {
        //## IMPLEMENT ##//
        if (self.imag >= 0){
            return "\(self.real)+\(self.imag)i";
            
        } else {
        return "\(self.real)\(self.imag)i";
        }

    }
    
    // INITIALISERS
    
    
    /**
     Designated initialiser
     
     Real and imaginary parts are passed in the arguments of the initialiser.
     
     - parameter real Real part of the numerator
     - parameter imag Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        //## IMPLEMENT ##//
        self.real = real
        self.imag = imag
    }
    
    /**
     Default initialiser
     
     Sets complex number to 0
     */
    convenience init() {
        //## IMPLEMENT ##//
        self.init(real: 0.0, imag: 0.0);
    }
    
    // METHODS
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: c1.real + c2.real, imag: c1.imag + c2.imag)
    }
    
    func copy() -> Complex{
        let real: Float =  self.real
        let imag: Float =  self.imag
        
        return Complex(real: real, imag: imag);
    }
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex(real: c1.real - c2.real, imag: c1.imag - c2.imag);
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        let r = (c1.real * c2.real) - (c1.imag * c2.imag)
        let c = (c1.real * c2.imag) + (c1.imag * c2.real)
        return Complex(real: r, imag: c);
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        let r = ((c1.real * c2.real) + (c1.imag * c2.imag)) / c2.magnitude
        let c = ((c1.imag * c2.real) - (c1.real * c2.imag)) / c2.magnitude
        return Complex(real: r, imag: c);
        
    }
}

/**
 + operator between two Complex numbers
 */
func +(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.add(c1: c1, to: c2);
}

/**
 - operator between two Complex numbers
 */
func -(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.subtract(c1: c1, from: c2);
    
}

/**
 * operator between two Complex numbers
 */
func *(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.multiply(c1: c1, by: c2);
}

/**
 / operator between two Complex numbers
 */
func /(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.divide(c1: c1, by: c2);
}

/**
 + operator between a Complex number and a Float
 */
func +(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex.add(c1: c, to: Complex(real: x, imag: 0));
}

/**
 - operator between a Complex number and a Float
 */
func -(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex.subtract(c1: c, from: Complex(real: x, imag: 0));
}

/**
 * operator between a Complex number and a Float
 */
func *(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex.multiply(c1: c, by: Complex(real: x, imag: 0));
}

/**
 / operator between a Complex number and a Float
 */
func /(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex.divide(c1: c, by: Complex(real: x, imag: 0));
}
