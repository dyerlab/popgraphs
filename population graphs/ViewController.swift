//
//  ViewController.swift
//  population graphs
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa
import SceneKit


class ViewController: NSViewController {

    @IBOutlet weak var sceneView: GraphView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sceneView.setup()
        
//        // Do any additional setup after loading the view.
//        let scene = SCNScene()
//        self.sceneView.scene = scene
//
//        let boxSide : CGFloat = 10.0
//        //let box = SCNBox(width: boxSide, height: boxSide, length: boxSide, chamferRadius: 0.0)
//        let box = SCNSphere(radius: boxSide)
//        let boxNode = SCNNode(geometry: box)
//        scene.rootNode.addChildNode(boxNode as SCNNode)
//        boxNode.rotation = SCNVector4Make(0.0, 1.0, 0.0, CGFloat(Double.pi/5.0))
//
//
//        let cameraNode = SCNNode()
//        cameraNode.camera = SCNCamera()
//        cameraNode.position = SCNVector3Make(0, 10, 20)
//        cameraNode.rotation = SCNVector4Make(1, 0, 0, -atan2(10.0,20.0))
//
//        scene.rootNode.addChildNode(cameraNode)
//
//        let lightBlue = NSColor(calibratedRed: 4.0/255.0, green: 120.0/255, blue: 255.0/255, alpha: 1.0)
//
//        let light = SCNLight()
//        light.type = SCNLight.LightType.directional
//        light.color = lightBlue
//
//        let lightNode = SCNNode()
//        lightNode.light = light
//        cameraNode.addChildNode(lightNode )
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    

}

