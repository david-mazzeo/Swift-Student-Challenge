//
//  File.swift
//  The Gravity Box
//
//  Created by David Mazzeo on 22/4/2022.
//

import UIKit
import SpriteKit

var neutronCount = 0
var protonCount = 0

class SimulatorController: UIViewController {
    
    let neutronCount = UILabel()
    let protonCount = UILabel()
    let timeRemaining = UIImageView()
    
    override func loadView() {
        
        self.isModalInPresentation = true
        
        let boxImage = UIImageView()
        boxImage.image = UIImage(named: "Rounded Box.heic")
        boxImage.contentMode = .scaleAspectFit
        
        timeRemaining.image = UIImage(systemName: "20.circle.fill")
        timeRemaining.contentMode = .scaleToFill
        timeRemaining.tintColor = .white
        
        let quitButton = UIButton()
        quitButton.setBackgroundImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        quitButton.tintColor = .red
        quitButton.setTitle("", for: .normal)
        quitButton.isUserInteractionEnabled = true
        quitButton.addTarget(self, action: #selector(quitButtonPressed), for: .touchDown)
        
        let neutronLabel = UILabel()
        neutronLabel.text = "Neutrons"
        neutronLabel.textColor = .red
        neutronLabel.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        
        let protonLabel = UILabel()
        protonLabel.text = "Protons"
        protonLabel.textColor = .systemBlue
        protonLabel.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        
        neutronCount.text = "0"
        neutronCount.textColor = .black
        neutronCount.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        
        protonCount.text = "0"
        protonCount.textColor = .black
        protonCount.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        protonCount.textAlignment = .right
        
        let view = UIView()
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        sceneView.backgroundColor = .black
        
        view.addSubview(sceneView)
        view.addSubview(boxImage)
        view.addSubview(neutronLabel)
        view.addSubview(protonLabel)
        view.addSubview(neutronCount)
        view.addSubview(protonCount)
        view.addSubview(quitButton)
        view.addSubview(timeRemaining)
        
        if let view = sceneView as SKView? {
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            view.showsNodeCount = true
            view.showsFPS = true
            view.presentScene(scene)
            view.ignoresSiblingOrder = true
        }
        
        boxImage.translatesAutoresizingMaskIntoConstraints = false
        neutronLabel.translatesAutoresizingMaskIntoConstraints = false
        protonLabel.translatesAutoresizingMaskIntoConstraints = false
        neutronCount.translatesAutoresizingMaskIntoConstraints = false
        protonCount.translatesAutoresizingMaskIntoConstraints = false
        quitButton.translatesAutoresizingMaskIntoConstraints = false
        timeRemaining.translatesAutoresizingMaskIntoConstraints = false
        
        boxImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        boxImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        neutronLabel.topAnchor.constraint(equalTo: boxImage.topAnchor, constant: 20).isActive = true
        neutronLabel.leftAnchor.constraint(equalTo: boxImage.leftAnchor, constant: 30).isActive = true
        
        neutronCount.bottomAnchor.constraint(equalTo: boxImage.bottomAnchor, constant: -20).isActive = true
        neutronCount.leftAnchor.constraint(equalTo: neutronLabel.leftAnchor).isActive = true
        
        protonLabel.topAnchor.constraint(equalTo: boxImage.topAnchor, constant: 20).isActive = true
        protonLabel.rightAnchor.constraint(equalTo: boxImage.rightAnchor, constant: -30).isActive = true
        
        protonCount.bottomAnchor.constraint(equalTo: boxImage.bottomAnchor, constant: -20).isActive = true
        protonCount.rightAnchor.constraint(equalTo: protonLabel.rightAnchor).isActive = true
        
        quitButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        quitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        timeRemaining.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        timeRemaining.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        let widthConstraintBox = NSLayoutConstraint(item: boxImage, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 300)
        let heightConstraintBox = NSLayoutConstraint(item: boxImage, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        
        let widthConstraintQuit = NSLayoutConstraint(item: quitButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        let heightConstraintQuit = NSLayoutConstraint(item: quitButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 49)
        
        let widthConstraintTime = NSLayoutConstraint(item: timeRemaining, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        let heightConstraintTime = NSLayoutConstraint(item: timeRemaining, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 49)
        
        NSLayoutConstraint.activate([widthConstraintBox, heightConstraintBox, widthConstraintQuit, heightConstraintQuit, widthConstraintTime, heightConstraintTime])
        
        self.view = view
        
        NotificationCenter.default.addObserver(self, selector:#selector(newNeutronCollected(_:)), name: NSNotification.Name("newNeutronCollected"), object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(newProtonCollected(_:)), name: NSNotification.Name("newProtonCollected"), object: nil)
        
        startTimer()
        
    }
    
    @objc func quitButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func newNeutronCollected(_ notification: Notification) {
        let newNeutronAmount = Int(neutronCount.text!)! + 1
        neutronCount.text = String(newNeutronAmount)
    }
    
    @objc func newProtonCollected(_ notification: Notification) {
        let newProtonAmount = Int(protonCount.text!)! + 1
        protonCount.text = String(newProtonAmount)
    }
    
    var secondsRemaining = 20
        
    func startTimer() {
            
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if secondsRemaining > 0 {
                print ("\(secondsRemaining) seconds")
                secondsRemaining -= 1
                timeRemaining.image = UIImage(systemName: "\(secondsRemaining).circle.fill")
            } else {
                Timer.invalidate()
            }
        }
                
    }
    
}

class GameScene: SKScene {
    
    struct PhysicsCategory {
        static let none: UInt32 = 0
        static let all: UInt32 = UInt32.max
        static let neutron: UInt32 = 0b1
        static let proton: UInt32 = 0b10
    }
  
    override func didMove(to view: SKView) {
    
        run(SKAction.repeatForever(SKAction.sequence([
        SKAction.run(addNeutron),
        SKAction.run(addProton),
        SKAction.wait(forDuration: random(min: 0.05, max: 0.25))
        ])
        ))
        
    }
    
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 4294967296)
    }
    
    func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
    func addNeutron() {
    
        let neutron = Neutron(imageNamed: "neutron.heic")
        neutron.isUserInteractionEnabled = true
        
//        if UIDevice.current.userInterfaceIdiom == .pad {
//            neutron.size = CGSize(width: 120, height: 120)
//        } else {
            neutron.size = CGSize(width: 90, height: 90)
//        }
    
        neutron.physicsBody = SKPhysicsBody(rectangleOf: neutron.size)
        neutron.physicsBody?.isDynamic = true
        
        let actualX = random(min: 0, max: size.width)
        let actualY = random(min: 0, max: size.height)
        
        neutron.position = CGPoint(x: actualX, y: actualY)
        
        self.addChild(neutron)
        
        var actualDuration = CGFloat(0)
        if UIDevice.current.userInterfaceIdiom == .pad {
            actualDuration = random(min: CGFloat(0.9), max: CGFloat(1.375))
        } else {
            actualDuration = random(min: CGFloat(0.5), max: CGFloat(1.375))
        }
        
        let actualX2 = random(min: 0, max: size.width)
        let actualY2 = random(min: 0, max: size.height)
        
        let actionMove = SKAction.move(to: CGPoint(x: actualX2, y: actualY2), duration: TimeInterval(actualDuration))
        let actionMoveDone = SKAction.removeFromParent()
          neutron.run(SKAction.sequence([actionMove, actionMoveDone]))
    }
    
    func addProton() {
    
        let proton = Proton(imageNamed: "proton.heic")
        proton.isUserInteractionEnabled = true
//        if UIDevice.current.userInterfaceIdiom == .pad {
//            proton.size = CGSize(width: 120, height: 120)
//        } else {
            proton.size = CGSize(width: 90, height: 90)
//        }
    
        proton.physicsBody = SKPhysicsBody(rectangleOf: proton.size)
        proton.physicsBody?.isDynamic = true
        
        let actualX = random(min: 0, max: size.width)
        let actualY = random(min: 0, max: size.height)
        
        proton.position = CGPoint(x: actualX, y: actualY)
        
        self.addChild(proton)
        
        var actualDuration = CGFloat(0)
        if UIDevice.current.userInterfaceIdiom == .pad {
            actualDuration = random(min: CGFloat(0.9), max: CGFloat(1.375))
        } else {
            actualDuration = random(min: CGFloat(0.5), max: CGFloat(1.375))
        }
        
        let actualX2 = random(min: 0, max: size.width)
        let actualY2 = random(min: 0, max: size.height)
        
        let actionMove = SKAction.move(to: CGPoint(x: actualX2, y: actualY2), duration: TimeInterval(actualDuration))
        let actionMoveDone = SKAction.removeFromParent()
          proton.run(SKAction.sequence([actionMove, actionMoveDone]))
    }
}

class Neutron: SKSpriteNode {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        neutronCount += 1
        print(neutronCount)
        NotificationCenter.default.post(name: NSNotification.Name("newNeutronCollected"), object: nil)
        self.removeFromParent()
    }
}

class Proton: SKSpriteNode {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        protonCount += 1
        print(protonCount)
        NotificationCenter.default.post(name: NSNotification.Name("newProtonCollected"), object: nil)
        self.removeFromParent()
    }
}

