//
//  CGPointUtility.swift
//  Blockus
//
//  Created by Garland Kevin C. on 4/5/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//  Copied from 'CGPoint+VectorMath.swift' by Kevin Kruusi.
//

import SpriteKit

extension CGPoint {
    
    // get the length of self
    var length: CGFloat {
        return sqrt( x * x + y * y)
    }
    
    /// get the unit vector of self
    var asUnitVector: CGPoint {
        return divide(by: length)
    }
    
    /// divide self by a scalar
    ///
    /// - Parameter by: a CGFloat scalar number
    /// - Returns: the divided point
    func divide(by: CGFloat) -> CGPoint {
        return CGPoint(x: self.x / by, y: y / by)
    }
    
// I don't know if I like this one, we'll see if I change it. - Kevin G.
    /// Simple movement function that starts where you currently are
    ///
    /// - Parameters:
    ///   - direction: what direction you wish to travel should be a unit vector
    ///   - velocity: the velocity you wish to travel
    ///   - time: the time you wish to travel
    /// - Returns: the distance you traveled from where you currently are
    func travel(in direction: CGPoint, at velocity: CGFloat, for time: TimeInterval) -> CGPoint {
        return CGPoint(x: velocity * CGFloat(time) * direction.x + x, y: velocity * CGFloat(time) * direction.y + y)
    }
    
    /// add two CGPoints together
    ///
    /// - Parameters:
    ///   - left: the left side of the addition
    ///   - right: the right side of the addition
    /// - Returns: the result
    static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
// I added the documentation to this one, I don't know if that makes it better. - Kevin G.
    /// multiply a CGPoint by a scalar CGFloat
    ///
    /// - Parameters:
    ///   - left : the CGPoint on the left of the asterisk
    ///   - right: the CGFloat on hte right of the asterisk
    /// - Returns: a CGPoint scaled by the value of right
    static func * (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x * right, y: left.y * right)
    }
    
// I wanted the symmetry of the opposite, I don't know if I'll ever use it. - Kevin G.
    /// multiply a CGPoint by a scalar CGFloat
    ///
    /// - Parameters:
    ///   - left : the CGFloat on the left of the asterisk
    ///   - right: the CGPoint on the right of the asterisk
    /// - Returns: a CGPoint scaled by the value of left
    static func * (left: CGFloat, right: CGPoint) -> CGPoint {
        return CGPoint(x: left * right.x, y: left * right.y)
    }
    
    /// subtract one CGPoint from another
    ///
    /// - Parameters:
    ///   - left: the left side of the subtraction
    ///   - right: the right side of the subtraction
    /// - Returns: the result
    static func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    /// A simple check to see if you have reached your target by compairing direction vectors
    ///
    /// - Parameter target: the next iteration of your target direction
    /// - Returns: true or false you your target vector has mutated in another direction
    func didOvershoot(next target: CGPoint) -> Bool {
        if (self.x > 0) == (target.x > 0) && (self.y > 0) == (target.y > 0) {
            return true
        }
        return false
    }
    
    /// Returns the facing angle of a given direction in radians
    ///
    /// - Parameter direction: the direction you wish to point
    /// - Returns: the angel in radians
    static func facingAngle(_ direction: CGPoint) -> CGFloat {
        return CGFloat( atan2( Double(direction.y), Double(direction.x)))
    }
    
    /// Modifies the value of the lhs operand
    static func += ( left: inout CGPoint, right: CGPoint){
        left = CGPoint(x: left.x + right.x, y: left.y + right.y);
    }
    
    //Note: I intend to add more operators to this, check back at https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html
}
