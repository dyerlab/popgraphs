//
//  PopulationGraphTests.swift
//  population graphsTests
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import XCTest

class PopulationGraphTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNewGraph() {
        let graph = PopulationGraph()
        let node1 = Node(label: "Bob", size: 12)
        let node2 = Node(label: "Alice", size: 18)
        let node3 = Node(label: "Frank", size: 8)
        let edge1 = Edge(from: node1, to: node2, weight: 10)
        
        graph.addNode(node: node1 )
        graph.addNode(node: node2 )
        graph.addNode(node: node3 )
        graph.addEdge(edge: edge1 )
        graph.addEdge(fromLabel: "Alice", toLabel: "Frank", weight: 9)
        
        XCTAssert( graph.nodes.count == 3 )
        XCTAssert( graph.edges.count == 2 )
        XCTAssert( graph.nodes[ 0 ] == node1 )
    }


}
