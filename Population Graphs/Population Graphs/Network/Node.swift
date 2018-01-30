import Foundation
import SceneKit

public class Node : SCNNode {
    var label : String
    var size : Double
    var edges: [Edge]
    var color: NSColor
    
    override public var description : String {
        var ret = "\(self.label): \(self.size)"
        ret += " \(super.description)"
        for e in self.edges {
            ret += " \(e.description)"
        }
        return ret
    }
    
    public init( label : String, size :Double ) {
        self.label = label
        self.size = size
        self.edges = [Edge]()
        self.color = NSColor(calibratedHue: 2.0/9.0, saturation: 1.0, brightness: 1.0, alpha: 1.0 )
        
        super.init()
        self.geometry = SCNSphere( radius: CGFloat(size) )
        self.geometry?.firstMaterial?.diffuse.contents = self.color
        
        let x = CGFloat.random(min: -100, max: 100)
        let y = CGFloat.random(min: -100, max: 100)
        let z = CGFloat.random(min: -100, max: 100)
        self.position = SCNVector3Make(x, y, z)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func addEdge( edge: Edge ){
        self.edges.append( edge )
    }
    
}


