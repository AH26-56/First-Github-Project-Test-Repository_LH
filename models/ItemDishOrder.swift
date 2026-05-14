//
//  ItemDishOrder.swift
//  2026-03-19-MenuWithOrder-Huang
//
//  Created by patron on 5/6/26.
//


//
//  ItemDishOrder.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/19/26.
//

import Foundation

struct ItemDishOrder: Identifiable {
    var id: UUID = UUID()
    var dish: Dish
    var unit: Int
    
    // create a computed property named dishPayment
    var dishPayment: Double {
        return Double(unit) * dish.price
    }
    
    //create a computed property named description
    var description: String {
        return "\(dish.name) \(dish.price.formatted(.currency(code: "USD")))"
    }
}
