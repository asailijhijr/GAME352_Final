//
//  Shape.swift
//  Blockus
//
//  Created by Kevin C. Garland on 4/5/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//

import Foundation
import SpriteKit;

enum Shape {
    case none
    case circle
    case rectangle
    case oval
    case chevron
    case other
}

class ShapeRenderer {
    //renders the shape given it's object's level and velocity.
    //I'm referring to https://developer.apple.com/documentation/spritekit/skshapenode for how to do most of this.
    static private let ballLine = SKShapeNode(path: CGPath, centered: <#T##Bool#>);
    static private let
    static func renderShape(_ shapeInQuestion : Shape, centre centrePoint : CGPoint) -> Bool {
        
    }
}
