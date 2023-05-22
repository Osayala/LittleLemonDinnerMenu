//
//  Dishes.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 12/05/2023.
//

import Foundation

@objc protocol MenuItem {
    @objc optional var id: UUID { get }
    @objc optional var order: Int { get set }

}

protocol MenuItem2 {
    var nameDish: String { get } // it is called TITLE in the ASSIGNMENT
    var price: Double { get }
    var category: FilterOption.Categories { get } // it is called MENU in the ASSIGNMENT
    var ingredientDish: [Ingredients.ingredient] { get set} // it is called INGEDIENT in the ASSIGNMENT
    }


class Dishes: Identifiable, MenuItem, MenuItem2 {
    
    var nameDish: String
    var ingredientDish: [Ingredients.ingredient]
    let allergiesType: [String]
    let imageDish: String
    let category: FilterOption.Categories
    var price: Double
        
    init(nameDish: String ,
         ingredientDish: [Ingredients.ingredient] = [],
         allergiesType: [String]=[],imageDish:String = "", category: FilterOption.Categories = .food, price: Double = 0) {
        self.nameDish = nameDish
        self.ingredientDish = ingredientDish
        self.allergiesType = allergiesType
        self.imageDish = imageDish
        self.category = category
        self.price = price
    
    }
}
