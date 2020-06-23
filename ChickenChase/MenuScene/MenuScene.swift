//
//  MenuScene.swift
//  ChickenChase
//
//  Created by Ryan Lauer on 6/22/20.
//  Copyright © 2020 LauTech. All rights reserved.
//


import SpriteKit
import GameplayKit

class MenuScene: SKScene {
      var entities = [GKEntity]()
       var graphs = [String : GKGraph]()
    
    var startButton:SKSpriteNode?
    var gameScene:SKScene!
       
       private var lastUpdateTime : TimeInterval = 0
       private var label : SKLabelNode?
       private var spinnyNode : SKShapeNode?
       
       override func sceneDidLoad() {}
    
    override func didMove(to view: SKView){
        startButton = self.childNode(withName: "startButton") as? SKSpriteNode
    }
       
       override func update(_ currentTime: TimeInterval) {
}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node == startButton {
                let transition = SKTransition.fade(withDuration: 1)
                gameScene = SKScene(fileNamed: "GameScene")
                gameScene.scaleMode = .aspectFit
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
    }
}
