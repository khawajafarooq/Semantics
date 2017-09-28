import Foundation

enum Direction {
    case up
    case down
    case left
    case right
}

struct Position {
    var x: Int
    var y: Int
    let heading: Direction?
    
    mutating func move(in direction: Direction) {
        switch direction {
        case .up: y -= 1
        case .down: y += 1
        case .left: x -= 1
        case .right: x += 1
        }
    }
}

/// uncomment to check compiler error
var p1 = Position(x: 2, y: 1, heading: .left)
p1.move(in: .up)
//p1.heading = .down


let p2 = Position(x: 0, y: 0, heading: .down)
//p2.move(in: .left)
//p2.heading = .up

/// Value Semantics Rules

/// Rule # 1 - Only Var object type can modify var properties
/// Rule # 2 - Let object type cannot modify var properties
/// Rule # 3 - Var object type cannot modify let properties
/// Rule # 4 - Let object type cannot modity let properties
