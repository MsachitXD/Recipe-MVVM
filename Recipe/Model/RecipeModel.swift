//
//  RecipeModel.swift
//  Recipe
//
//  Created by Sachit Mittal on 06/10/25.
//

import Foundation

struct RecipeModel: Identifiable {
    let id = UUID()
    let name : String
    let caloriesPer100Grams : Int
    let recipe : String
    let recipeImage : String
    let recipeURL : String
}
