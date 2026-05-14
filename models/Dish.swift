//
//  Dish.swift
//  2026-03-19-MenuWithOrder-Huang
//
//  Created by patron on 5/6/26.
//


//
//  Dish.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/13/26.
//

import Foundation

struct Dish: Identifiable {
    var id: UUID = UUID()
    let name: String
    let imageName: String
    let price: Double
    let description: String
}
