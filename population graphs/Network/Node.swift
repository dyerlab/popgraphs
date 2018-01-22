import Foundation

public class Node {
    var label : String
    var size : Double
    var edges: [Edge]
    
    public var description : String {
        var ret = "\(self.label): \(self.size)"
        for e in self.edges {
            ret += " \(e.description)"
        }
        return ret
    }
    
    public init( label : String, size :Double ) {
        self.label = label
        self.size = size
        self.edges = [Edge]()
        
    }
    
    public func addEdge( edge: Edge ){
        self.edges.append( edge )
    }
    
}


extension Node: Equatable {
    public static func == (left: Node, right: Node ) -> Bool {
        return left.label == right.label && left.size == right.size && left.edges == right.edges
        
    }
}

