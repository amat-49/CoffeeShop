//
//  Coffee.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/13/25.
//

import Foundation

struct Coffee : Hashable {
    var name: String
    var assetName: String
    var cupSize: CupSizes = .small
    var milk: Milk = .whole
    var sugar: Int = 0
    var iced: Bool = false
    var specialRequests: String? = nil
    
    func calculatePrice() -> Double {
            var price = cupSize.basePrice
            let taxRate = 0.08
            
            if milk == .oat {
                price += 1.00
            }
            
            if milk == .almond {
                price += 1.0
            }
            
            return price + (price * taxRate)
        }
}


