//
//  GameScene.swift
//  ChickenChase
//
//  Created by Ryan Lauer on 6/22/20.
//  Copyright © 2020 LauTech. All rights reserved.
//

import SpriteKit
import GameplayKit

class LoadingScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    let transition : SKTransition = SKTransition.fade(withDuration: 1)
    
    private var lastUpdateTime : TimeInterval = 0
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func sceneDidLoad() {

        let transition = SKTransition.flipHorizontal(withDuration: 1)
        //Might not even need a loading screen, keeping now because it looks dope af.
        let scene:SKScene? = SKScene(fileNamed: "MenuScene")
        let menuScene: SKScene? = MenuScene()
        self.view?.presentScene(scene)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        sleep(3)

       
    }
}
