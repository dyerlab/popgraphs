import Foundation

public class Edge {
    var node1 : Node
    var node2 : Node
    var weight : Double
    
    public var description : String {
        return "\(self.node1.description) - \(self.node2.description) : \(self.weight)"
    }
    
    public init( from: Node, to: Node, weight: Double ) {
        self.node1 = from
        self.node2 = to
        self.weight = weight
        self.node1.addEdge( edge:self )
        self.node2.addEdge( edge:self )
    }
    
}


extension Edge: Equatable {
    public static func == (left: Edge, right: Edge ) -> Bool {
        return left.node1 == right.node1 && left.weight == right.weight && left.node2 == right.node2
    }
}

