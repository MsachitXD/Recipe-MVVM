//
//  ListItemView.swift
//  Recipe
//
//  Created by Sachit Mittal on 06/10/25.
//

import SwiftUI

struct ListItemView: View {
    
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    let imageDim: CGFloat = 70
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                Text(name)
                    .foregroundColor(.orange)
                Text("\(caloriesPer100Grams) Calories Per 100 Grams")
                    .font(.caption)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .padding()
            .background(Color.black.cornerRadius(10))
            
            Spacer()
            
            Image(recipeImage)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 3)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding()
        .background(Color.black.cornerRadius(10))
    }
}

#Preview {
    ListItemView(
        name: "Hummus",
        caloriesPer100Grams: 322,
        recipeImage: "IMGhummus")
}
