//
//  Size.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/15/25.
//

import Foundation

enum CupSizes: String, CaseIterable {
    case small
    case medium
    case large
    
    var basePrice: Double {
        switch self {
        case .small:
            return 4.00
        case .medium:
            return 4.50
        case .large:
            return 5.00
        }
    }
}
