//
//  DishDetailView.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/13/26.
//

import SwiftUI

struct DishDetailView: View {
    var dish: Dish
    @Binding var totalOrder: TotalDishOrder
    
    
    var body: some View {
        VStack {
            Text(dish.name)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.orange)
                .padding()
            
            Image(dish.imageName)
                .resizable()
                .frame(width: 300, height: 200)
                .scaledToFit()
                .padding()
            
            Text("$\(dish.price, specifier: "%.2f")")
                .font(.title2)
                .foregroundStyle(.blue)
                .padding()
            
            Text(dish.description)
                .font(.caption)
                .foregroundStyle(.secondary)
                .frame(width: 300)
                .padding()
            
            Spacer()
        }
        .safeAreaInset(edge: .bottom) {
            Button {
                totalOrder.appendDish(newDishOrder: ItemDishOrder(dish: dish, unit: 1))
            } label: {
                Label("Add to Order", systemImage: "cart.fill")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 4)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding(.horizontal)
            .padding(.top, 8)
            .padding(.bottom, 4)
            .background(.ultraThinMaterial)
        }
    }
}
