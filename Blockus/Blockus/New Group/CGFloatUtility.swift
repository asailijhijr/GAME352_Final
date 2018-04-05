//
//  CGFloatUtility.swift
//  Blockus
//
//  Created by Garland Kevin C. on 3/29/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//  Copied from 'CGFloat+Random.swift' and 'CGFloat+Angles.swift' by Kevin Kruusi.
//

import SpriteKit

extension CGFloat {
    
// Copied from 'CGFloat+Angles.swift' by Kevin Kruusi.
    func toDegrees() -> CGFloat {
        return self * 180 / CGFloat.pi
    }
    
    func toRadians() -> CGFloat {
        return self * CGFloat.pi / 180
    }
    
// Copied from 'CGFloat+Random.swift' by Kevin Kruusi.
    /// returns a random number between a minimum and maximum number
    ///
    /// - Parameters:
    ///   - min: the mininimum number
    ///   - max: the maximum number
    /// - Returns: CGFloat
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        let rand = CGFloat(arc4random()) / CGFloat(UInt32.max)
        return (rand * (max - min) + min)
    }
    
    /// returns a value between 0 and 1.0
    ///
    /// - Returns: CGFloat
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
