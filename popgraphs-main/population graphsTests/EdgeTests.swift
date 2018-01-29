//
//  EdgeTests.swift
//  population graphsTests
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import XCTest

class EdgeTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testEdge() {
        let node1 = Node(label: "bob", size: 12)
        let node2 = Node(label: "alice",size:18)
        let edge = Edge(from: node1, to: node2, weight: 3.14)
        
        XCTAssertEqual(edge.weight, 3.14)
        
    }
    
}
