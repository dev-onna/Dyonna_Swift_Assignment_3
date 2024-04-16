



class Ship {
    var shipName: String
    var shipYear: Int
    var countryOfOrigin: String
    var engineHp: Int
    
    init(shipName: String, shipYear: Int, countryOfOrigin: String, engineHp: Int) {
        self.shipName = shipName
        self.shipYear = shipYear
        self.countryOfOrigin = countryOfOrigin
        self.engineHp = 100
    }
}

class CruiseShip : Ship {
    let minCapacity: Int = 30
    let maxCapacity: Int = 50
    var oceanOfOperation: String = "Atlantic Ocean"
    var currentPassengerCount: Int = 51
    
    override init(shipName: String, shipYear: Int, countryOfOrigin: String, engineHp:Int) {
        super.init(shipName: shipName, shipYear: shipYear, countryOfOrigin: countryOfOrigin, engineHp: 100)
        
    }
    func addPassenger() -> Bool {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            return true}
        else {
           return false
        }
    }
}
func addPassenger() { }
let cruise = CruiseShip(shipName: "Dragon Express", shipYear: 2019, countryOfOrigin: "Italy", engineHp: 100)
        if cruise.addPassenger() {
            print("Ship is not at max, add passenger.")
        } else {
            print("The ship has reached its maximum capacity, no more passengers.")
        }
  print("Current passenger count: \(cruise.currentPassengerCount)")
                    
func printPassengerDetails() -> Void { }
    print("Current Passenger Count: \(cruise.currentPassengerCount)")


                 //      * CargoShip (subclass)
                  //         * minCargoCapacity (before the ship will launch)
                  //         * maxCargoCapacity
                  //         * currentCargoCount
                   //        * isInternational
                     //      * add a method to add cargo if the ship is not at max capacity
                      //     * add a method to print the current cargo count
                       //
                       
class CargoShip: Ship {
    let minCargoCapacity: Double
    let maxCargoCapacity: Double
    var currentCargoCount: Double
    var isInternational: Bool
    
    init(shipName: String, shipYear: Int, countryOfOrigin: String, minCargoCapacity: Double, maxCargoCapacity: Double, currentCargoCount: Double, isInternational: Bool) {
        self.minCargoCapacity = minCargoCapacity
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(shipName: shipName, shipYear: shipYear, countryOfOrigin: countryOfOrigin, engineHp: 100)
    }
    func addCargo(amount: Double) -> Bool {
           let newCargoCount = currentCargoCount + amount
        if newCargoCount <= maxCargoCapacity {
               return true
           } else {
               return false
           }
       }
   }
    let ship = CargoShip(shipName: "Cargo express", shipYear: 2019, countryOfOrigin: "Italy", minCargoCapacity: 1000.00, maxCargoCapacity: 5000.00, currentCargoCount:5000.00, isInternational: true)// instance for CargoShip

if ship.addCargo(amount: 5000.00) {
    print("Ship is not at max, add cargo.")
} else {
    print("Ship is at max, no more cargo.")
    
    func printCargoDetails() -> Void { }
    print("Current Cargo Count: \(ship.currentCargoCount)")
}
