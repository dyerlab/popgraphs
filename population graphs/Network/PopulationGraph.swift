import Foundation

public class PopulationGraph {
    var nodes : [Node]
    var edges : [Edge]
    
    public init() {
        self.nodes = [Node]()
        self.edges = [Edge]()
    }
    
    public func addNode(node: Node ) {
        self.nodes.append( node )
    }
    
    public func addEdge(edge: Edge ){
        self.edges.append( edge )
    }
    
    public func addEdge( fromLabel: String, toLabel: String, weight: Double ) {
        
        if let i = nodes.index( where: {$0.label == fromLabel }) {
            if let j = nodes.index( where: {$0.label == toLabel }) {
                self.addEdge(edge: Edge(from: nodes[i], to: nodes[j], weight: weight))
            }
        }
    }
}


extension PopulationGraph: CustomStringConvertible {
    public var description : String {
        get {
            var ret = "Population Graph:\n"
            for node in self.nodes {
                ret += " \(node.description)\n"
            }
            for edge in self.edges {
                ret += " \(edge.description)\n"
            }
            return ret
        }
    }
}


extension PopulationGraph: Equatable {
    public static func ==(left: PopulationGraph, right: PopulationGraph ) -> Bool {
        return left.nodes == right.nodes && left.edges == right.edges
    }
}



public func makeLopho() -> PopulationGraph {
    let graph = PopulationGraph()
    let size = 1.0
    let labels = ["BaC", "Ctv", "LaV", "Lig", "PtC", "PtP", "SLG", "SnE", "SnF", "SnI",
                  "StR", "TsS", "CP", "LF", "PL", "SenBas", "Seri", "SG", "SI", "SN", "TS"]
    let weight = 1.0
    let edges = [ ["BaC", "LaV"],    ["BaC", "Lig"],    ["BaC", "PtC"],   ["BaC", "PtP"],    ["BaC", "SnE"],
                  ["BaC", "SnI"],    ["BaC", "StR"],    ["Ctv", "PtP"],   ["Ctv", "SLG"],    ["Ctv", "SnF"],
                  ["Ctv", "SenBas"], ["LaV", "Lig"],    ["LaV", "PtC"],   ["LaV", "SnE"],    ["LaV", "SnF"],
                  ["LaV", "TsS"],    ["Lig", "PtC"],    ["Lig", "SnI"],   ["Lig", "StR"],    ["Lig", "TsS"],
                  ["PtC", "SnE"],    ["PtC", "StR"],    ["PtC", "TsS"],   ["PtC", "SenBas"], ["PtP", "SnF"],
                  ["PtP", "SnI"],    ["PtP", "SenBas"], ["SLG", "SnF"],   ["SLG", "SnI"],    ["SnE", "StR"],
                  ["SnE", "TsS"],    ["SnF", "SnI"],    ["SnI", "StR"],   ["StR", "TsS"],    ["StR", "SenBas"],
                  ["CP", "Seri"],    ["CP", "SG"],      ["CP", "SN"],     ["CP", "TS"],      ["LF", "PL"],
                  ["LF", "SG"],      ["LF", "SI"],      ["PL", "SenBas"], ["PL ", "SG"],     ["PL", "SI"],
                  ["PL", "SN"] ]
    
    for label in labels {
        graph.addNode(node: Node(label: label, size: size))
    }
    for pairs in edges {
        graph.addEdge(fromLabel: pairs[0], toLabel: pairs[1], weight: weight)
    }
    return graph
}
