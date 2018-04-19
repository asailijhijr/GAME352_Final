//
//  GameScene.swift
//  Blockus
//
//  Created by Garland Kevin C. on 3/1/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var thePaddle: Paddle?
    
    //added for database testing
    var db : myDatabase = myDatabase();
    
    override func didMove(to view: SKView) {
        //added for database testing
        db.requestStats() { arg1 in
            //do nothing
            //print(arg1)
        }
        
        db.updateScore(newScore: 100);
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
