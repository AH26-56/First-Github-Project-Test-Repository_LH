//
//  ContentView.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/13/26.
//

import SwiftUI

struct MasterView: View {
    @State private var totalOrder = TotalDishOrder()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dishes) { dish in
                    NavigationLink {
                        DishDetailView(dish: dish, totalOrder: $totalOrder)
                    } label: {
                        DishListView(dish: dish)
                    }
                }
            }
        }
    }
}
