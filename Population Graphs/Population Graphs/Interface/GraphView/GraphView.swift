//
//  GraphView.swift
//  popgraph-viewer
//
//  Created by Rodney Dyer on 1/27/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa
import SceneKit

class GraphView: SCNView {
    
    public var graphNode = SCNNode()
    
    override func awakeFromNib() {
        let theScene = SCNScene()
        
        // Set up Camera
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(0,20,40)
        cameraNode.rotation = SCNVector4Make(1, 0, 0, CGFloat(-atan2f(20.0, 40.0)))
        theScene.rootNode.addChildNode( cameraNode )
        
        // Set up directional light
        let directional = SCNLight()
        directional.type  = SCNLight.LightType.directional
        let directionalNode = SCNNode()
        directionalNode.light = directional
        directionalNode.rotation = SCNVector4Make(0, 1, 0, CGFloat(-Double.pi/4.0))
        theScene.rootNode.addChildNode(directionalNode)
        
        // Set up ambient
        let ambient = SCNLight()
        ambient.type = SCNLight.LightType.ambient
        ambient.color = NSColor(calibratedWhite: 0.25, alpha: 1.0)
        let ambientNode = SCNNode()
        ambientNode.light = ambient
        theScene.rootNode.addChildNode(ambientNode)
        
        // spotlight
        let spotlight = SCNLight()
        spotlight.type = SCNLight.LightType.spot
        spotlight.color = NSColor(calibratedWhite: 0.4, alpha: 1.0)
        spotlight.spotInnerAngle = 60.0
        spotlight.spotOuterAngle = 100.0
        spotlight.castsShadow = true
        let spotNode = SCNNode()
        spotNode.light = spotlight
        spotNode.position = SCNVector3Make(-30,25,30)
        spotNode.constraints = [ SCNLookAtConstraint(target: theScene.rootNode) ]
        
        // make the reflective floor
        let floor = SCNFloor()
        floor.firstMaterial?.diffuse.contents = NSColor.white
        floor.firstMaterial?.lightingModel = SCNMaterial.LightingModel.constant
        floor.reflectivity = 0.15
        floor.reflectionFalloffEnd = 15
        let floorNode = SCNNode(geometry: floor )
        theScene.rootNode.addChildNode(floorNode)
        
        
        theScene.rootNode.addChildNode(graphNode)
        graphNode.rotation = SCNVector4Make(0, 1, 0, CGFloat( Double.pi / 8.0 ) )
        let cylinder = SCNCylinder(radius: 1.0, height: 5.0 )
        cylinder.firstMaterial?.diffuse.contents? = NSColor.green
        let cylinderNode = SCNNode(geometry: cylinder)
        cylinderNode.position = SCNVector3Make(0, 2.5, 0)
        self.graphNode.addChildNode(cylinderNode)
        
        self.scene = theScene
        
    }

   
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }

    
}



