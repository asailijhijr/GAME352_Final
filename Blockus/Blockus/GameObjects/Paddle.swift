//
//  Paddle.swift
//  Blockus
//
//  Created by Kevin C. Garland on 4/19/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//

import Foundation
import SpriteKit;

class Paddle : GameObject {
    private var sections : [Int] = []

    init(givenPosition: CGPoint) {
        
        super.init();
        level = 1;
        shape = .rectangle;
        velocity = CGPoint(x: 0, y: 0);
        position = givenPosition;
    }
    
    required init?(coder aDecoder: NSCoder) {

        
        //Same question as in GameObject.swift
        fatalError("init(coder:) has not been implemented")
    }
}
