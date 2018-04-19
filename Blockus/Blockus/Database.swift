//
//  Database.swift
//  Blockus
//
//  Created by Garland Kevin C. on 4/12/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//  We wrote this class in 
//

import Foundation
import SpriteKit
import FirebaseDatabase

typealias DBResult = ([AnyHashable: Any]) -> Void


class myDatabase {

let dataBase: DatabaseReference;

    init() {
        dataBase = Database.database().reference();
    }
    
    func requestStats(completion: @escaping DBResult) {
        dataBase.child("HighScore").observe(DataEventType.value) { (snapshot)
            in
            print(snapshot.description)
            guard let result = snapshot.value as? [AnyHashable: Any] else {
                return
            }
            completion(result)
        }
    }
    
    //up to here is what we wrote in class
    func updateScore(newScore: Int) {
        let knownHighScore = 2000;
        
        //suggested from https://firebase.google.com/docs/database/ios/read-and-write#update_specific_fields I couldn't understand it well enough, now I'm reading the reference instead of the guides
        //let key = dataBase.child("game-352-final/HighScore").childByAutoId().key;
        //let post = ["newUsername" : knownHighScore];
        //dataBase.child("game-352-final/HighScore").updateChildValues(post);
        
        //Now I'm reading https://firebase.google.com/docs/reference/ios/firebasedatabase/api/reference/Classes/FIRDatabaseReference#-setvalue to figure this out
        dataBase.child("HighScore").child("newerUser").setValue(knownHighScore)
    }

}
