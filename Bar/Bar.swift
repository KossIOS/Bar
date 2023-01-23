//
//  Bar.swift
//  Bar
//
//  Created by Konstantyn Koroban on 02/09/2021.
//

import Foundation

typealias Euro = Int
typealias ml = Float
class Bar {
    static let allBar = Bar()
    var totalRevenue: Euro
    var totalVolume: ml
    
    private init(){
        totalRevenue = 0
        totalVolume = 0
    }
    func buy(_ sommeDrink: Drink){
        totalRevenue += sommeDrink.priceOfDrink
        totalVolume += sommeDrink.volumeOfDrink
        
    }
    
    func getVolume() -> ml {
        print("Drank \(totalVolume) liters")
        return totalVolume
        
    }
    
    func getRevenue() -> Euro {
        print("Gave \(totalRevenue) euro")
        return totalRevenue
    }
}

class Drink {
    let nameOfDrink: String
    var priceOfDrink: Euro
    var volumeOfDrink: ml
    
    init(nameOfDrink: String, priceOfDrink: Euro, volumeOfDrink: ml){
        self.nameOfDrink = nameOfDrink
        self.priceOfDrink = priceOfDrink
        self.volumeOfDrink = volumeOfDrink
    }
    
    class Tea: Drink {
        init() {
            super.init(nameOfDrink: "Tea", priceOfDrink: 3, volumeOfDrink: 0.300)
        }
        
        class Whiskey: Drink {
            init() {
                super.init(nameOfDrink: "Whiskey", priceOfDrink: 11, volumeOfDrink: 0.050)
            }
            
            class Cofee: Drink {
                init() {
                    super.init(nameOfDrink: "Cofee", priceOfDrink: 5, volumeOfDrink: 0.250)
                }
            }
        }
    }
}
