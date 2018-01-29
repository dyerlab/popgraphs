//
//  GraphView.swift
//  population graphs
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa
import SceneKit

class GraphView: SCNView {
    
    var numbers = Array<Int>()
    
    override func awakeFromNib() {
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3Make(0, 20, 40)
        cameraNode.rotation = SCNVector4Make(1, 0, 0, CGFloat(-atan2f(20.0,40.0)) )
        
        let directionalLight = SCNLight()
        directionalLight.type = SCNLight.LightType.directional
        directionalLight.color = NSColor(calibratedWhite: 0.3, alpha: 1.0)
        let directionalLightNode = SCNNode()
        directionalLightNode.light = directionalLight
        directionalLightNode.rotation = SCNVector4Make(0, 1, 0, CGFloat(Double.pi / 4.0))
        scene?.rootNode.addChildNode(directionalLightNode)
        
        let ambientLight = SCNLight()
        ambientLight.type = SCNLight.LightType.ambient
        ambientLight.color = NSColor(calibratedWhite: 0.25, alpha: 1.0 )
        let ambientNode = SCNNode()
        ambientNode.light = ambientLight
        scene?.rootNode.addChildNode(ambientNode)
        
        let spotLight = SCNLight()
        spotLight.type = SCNLight.LightType.spot
        spotLight.color = NSColor(calibratedWhite: 0.4, alpha: 1.0)
        let spotNode = SCNNode()
        spotNode.light = spotLight
        spotNode.position = SCNVector3Make(-30, 25, 30)
        spotLight.spotInnerAngle = 60
        spotLight.spotOuterAngle = 100
        spotNode.constraints = [SCNLookAtConstraint(target: scene?.rootNode )]
        spotLight.castsShadow = true
        
        let floor = SCNFloor()
        floor.firstMaterial?.diffuse.contents = NSColor(calibratedRed: 80.0/255, green: 80.0/255, blue: 80.0/255, alpha: 1.0)
        floor.firstMaterial?.lightingModel = SCNMaterial.LightingModel.constant
        floor.reflectivity = 0.15
        floor.reflectionFalloffEnd = 15
        let floorNode = SCNNode(geometry: floor)
        scene?.rootNode.addChildNode(floorNode)
        
        print("finished AFN")
        
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        
        print("draw(_)")
    }
    
}



