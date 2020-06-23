//
//  GameScene.swift
//  ChickenChase
//
//  Created by Ryan Lauer on 6/22/20.
//  Copyright © 2020 LauTech. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func sceneDidLoad() {}
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
       
    }
}
