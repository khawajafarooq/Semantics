import Foundation

struct Address {
    let unitNumber: String
    let buildingNumebr: String

}

struct Residance {
    var numberOfRooms: Int
    var address: Address
}

class User {
    let name: String
    var residance: Residance
    
    init(name: String, unitNumber: String, buildingNumber: String, numberOfRooms: Int) {
        self.name = name
        let address = Address(unitNumber: unitNumber, buildingNumebr: buildingNumber)
        self.residance = Residance(numberOfRooms: numberOfRooms, address: address)
    }
}

let user = User(name: "Khawaja", unitNumber: "3A", buildingNumber: "209", numberOfRooms: 2)
//user.residance.address.unitNumber = "3B" // compiler error
user.residance.address = Address(unitNumber: "3B", buildingNumebr: "209") // valid statement


/// There are better way to solve this. Wanna try?
