//
//  DishListView.swift
//  2026-03-12-MenuWithNavigation-Leon-Huang
//
//  Created by patron on 3/13/26.
//

import SwiftUI

struct DishListView: View {
    var dish: Dish
    
    var body: some View {
        HStack{
            Image(dish.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFill()
                .padding()
            Spacer()
            Text(dish.name)
                .font(.caption)
                .foregroundStyle(.blue)
                .padding()
        }
    }
}
