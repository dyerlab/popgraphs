//
//  NodeTests.swift
//  population graphsTests
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import XCTest

class NodeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testLabelSize() {
        let node1 = Node(label: "Bob", size: 12)
        let node2 = Node(label: "", size: 18)
        
        
        XCTAssertEqual(node1.label, "Bob")
        XCTAssertEqual(node2.label, "")
        
        XCTAssertEqual(node1.size, 12)
        XCTAssertEqual(node2.size, 18)
        
        XCTAssertEqual(node1.description, "Bob: 12.0")
        XCTAssertEqual(node2.description, ": 18.0")
    }
}
