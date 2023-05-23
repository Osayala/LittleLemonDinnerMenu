//
//  FilterOptions.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 16/05/2023.
//

import Foundation

class FilterOption: Identifiable {

    enum Categories: String {
        case food = "Food"
        case drinks = "Drinks"
        case dessert = "Dessert"
    }
    
    enum Sortby: String {
        case popular = "Must Popular"
        case price = "Price $-$$$"
        case alphabet = "A-Z"
    }
    
}

var category = [FilterOption.Categories.food, FilterOption.Categories.drinks, FilterOption.Categories.dessert]
let sortby = [FilterOption.Sortby.popular, FilterOption.Sortby.price, FilterOption.Sortby.alphabet]
