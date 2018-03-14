//
//  GameScene.swift
//  FlappyBird
//
//  Created by Tao Ong on 3/13/18.
//  Copyright © 2018 Tao Ong. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var bird = SKSpriteNode()
    var poleTop = SKSpriteNode()
    var poleBottom = SKSpriteNode()
    var poleTop2 = SKSpriteNode()
    var poleBottom2 = SKSpriteNode()
    
    override func sceneDidLoad() {
        bird = self.childNode(withName: "bird") as! SKSpriteNode
        poleTop = self.childNode(withName: "poleTop") as! SKSpriteNode
        poleBottom = self.childNode(withName: "poleBottom") as! SKSpriteNode
        poleTop2 = self.childNode(withName: "poleTop2") as! SKSpriteNode
        poleBottom2 = self.childNode(withName: "poleBottom2") as! SKSpriteNode
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 0
        self.physicsBody = border
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for _ in touches {
            bird.physicsBody?.velocity = CGVector(dx: 0, dy: 900)
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        if poleTop.position.x <= -500 {
            poleTop.position.x = 500
            poleBottom.position.x = 500
        }
        
        if poleTop2.position.x <= -500 {
            poleTop2.position.x = 500
            poleBottom2.position.x = 500
        }
    }
}
