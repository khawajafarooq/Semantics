import Foundation

class Machine {
    let model: String
    var make: String

    init(model: String, make: String) {
        self.model = model
        self.make = make
    }
}

/// uncomment to check compiler error

var m1 = Machine(model: "USS", make: "M1900")
//m1.model = "RSS"
m1.make = "M2000"
// under the hood reference pointer is updated instead of assigning new value back


let m2 = Machine(model: "USS", make: "M2100")
//m2.model = "RSS"
m2.make = "M2300"

/// Reference Semantics Rules

/// Rule # 1 - Both variable & constant type of object can modify variable properties
/// Rule # 2 - Other than above case, underlying properties cannot be modified
