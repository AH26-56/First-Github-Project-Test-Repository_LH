//  TotalDishOrder.swift
//  2026-03-19-MenuWithOrder-Huang
//
//  Created by patron on 5/6/26.
//


//
//  TotalDishOrder.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/19/26.
//

import Foundation

struct TotalDishOrder: Identifiable {
    var id: UUID = UUID()
    var itemOrders: [ItemDishOrder] = []
    
    //a computed property named totalCost
    var totalCost:Double {
        var totalCost:Double = 0
        
        //loop through array
        for dish in itemOrders{
            totalCost = totalCost + dish.dishPayment
            
        }
        
        return totalCost
    }
    
    //create a compted property named receipt
    var receipt: String {
        var text = "Receipt:\n"
        text = text + "===================\n"
        for item in itemOrders {
            text = text + "\(item.dish.name): \(item.unit) x \(item.dish.price) = \(item.dishPayment.formatted(.currency(code: "USD")))\n"
            
        }
            
        text = text + "===================\n"
        text = text + "Total: \(totalCost.formatted(.currency(code: "USD")))"
            
            return text
        }
        
        //if dish existed, add 1 to unit
        //if dish doesn't exist, append at the end of the order
        mutating func appendDish(newDishOrder: ItemDishOrder) {
            //create a local variable to indicate whether the dish existed or not
            var dishExisted: Bool = false
            
            //go through each dish item to see if the dish existed
            for index in 0..<itemOrders.count {
                if itemOrders[index].dish.name == newDishOrder.dish.name {
                    dishExisted = true
                    itemOrders[index].unit = itemOrders[index].unit + newDishOrder.unit
                }//end of if
            }//end of for loop
            //if dish doesn't exist yet
            if !dishExisted {
                itemOrders.append(newDishOrder)
            }
        }
    }
    
    //create a compted property named receipt





