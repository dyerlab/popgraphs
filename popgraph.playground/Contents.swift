//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let node1 = Node(label:"Bob", size:23)
let node2 = Node(label:"Alice",size: 14)
print( node1.description )
print( node2.description )


let e1 = Edge(from:node1,to:node2, weight:18)

print( "Nodes with edges")

print( node1.description )
print( node2.description )



