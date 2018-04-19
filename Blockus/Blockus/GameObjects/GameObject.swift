//
//  GameObject.swift
//  Blockus
//
//  Created by Kevin C. Garland on 3/22/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//

import Foundation
import SpriteKit;

//Versioning note, this class has incomplete function bodies.

class GameObject : SKNode {
    var level : Int; //Level affects both the potency of this object in relation to other objects and its draw colour.
    //var extraLevelData : CGFloat; //this might be useful if I want to gain xp towards a levelup or decay xp over time.
    var shape : Shape;
    //var position: CGPoint; //SKNode already has this and seems to use it for the purpose I want it for.
    var velocity: CGPoint
    
    override init() {
        level = 1;
        shape = .none;
        velocity = CGPoint(x: 0.0, y: 0.0);
        super.init();
        position = CGPoint(x: 0.0, y: 0.0);
    }
    
    required init?(coder aDecoder: NSCoder) {
        level = 1;
        shape = .none;
        velocity = CGPoint(x: 0.0, y: 0.0);
        super.init(coder: aDecoder);
        position = CGPoint(x: 0.0, y: 0.0);
        //Is this acceptble?
        //fatalError("init(coder:) has not been fully implemented.");
    }
    init(givenShape: Shape, givenPosition: CGPoint, givenVelocity: CGPoint) {
        level = 1;
        shape = givenShape;
        velocity = givenVelocity;
        super.init();
        position = givenPosition;
    }
    
    init(givenShape: Shape, givenPosition: CGPoint) {
        level = 1;
        shape = givenShape;
        velocity = CGPoint(x: 0.0, y: 0.0);
        super.init();
        position = givenPosition;
    }
    
    func doesCollide(other : GameObject) -> Bool {
        //I should check if this object collides with the given other object based on both object's shapes or physics colliders.
        
        return false;
    }
    
    //maybe this should be named rectifyCollision and called by doesCollide?
    func collide(other: GameObject) -> Bool {
        //I should rectify a collision with this object and the given other object based on both object's shapes or physics colliders.
        
        //the idea with the return value was that it would only return false if the objects were no longer colliding, if this function was not private, it would be called after doesCollide().
        return false;
    }
    
    func levelUp() {
        //Levelling comes from interactions with other objects, a controller of some sort should call this function, not other objects?
        level += 1;
    }
    
    func update(_ deltaTime : TimeInterval) {
        position += velocity * CGFloat(deltaTime);
    }
}
