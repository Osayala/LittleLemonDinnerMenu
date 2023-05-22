//
//  Model.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 11/05/2023.
//

import Foundation

final class Model: ObservableObject {

    @Published var menuItems: [Dishes] = []
    
    init () {
       menuItems = [
            Dishes(nameDish: "Chicken Salad", ingredientDish: [.bread, .cheese, .sauce, .lettuce], imageDish: "chickenSalad", category: .food, price: 8.5),
            Dishes(nameDish: "Meat balls", ingredientDish: [.beef, .peper, .carrot, .sauce], imageDish: "meatBalls", category: .food, price: 9.5),
            Dishes(nameDish: "Spaghetti", ingredientDish: [.pasta, .sauce], imageDish: "spaghetti", category: .food, price: 4.7),
            Dishes(nameDish: "Fish", ingredientDish: [.cod, .sauce], imageDish: "fish", category: .food, price: 7.8),
            Dishes(nameDish: "Grill Chicken", ingredientDish: [.spinach, .sauce],imageDish: "grilledChicken", category: .food, price: 6.7),
            Dishes(nameDish: "Salmon", ingredientDish: [.spinach, .sauce],imageDish: "salmon", category: .food, price: 7.8),
            Dishes(nameDish: "Medit Salad", ingredientDish: [.spinach, .carrot, .beens],imageDish: "mediterreanSalad", category: .food, price: 3.8),
            Dishes(nameDish: "Vegan", ingredientDish: [.spinach, .carrot, .beens],imageDish: "vegan", category: .food, price: 8.0),
            Dishes(nameDish: "Soup", ingredientDish: [.spinach, .milk],imageDish: "soup", category: .food, price: 3.75),
            Dishes(nameDish: "Raw Meat", ingredientDish: [.spinach, .sauce],imageDish: "raw", category: .food, price: 8.0),
            Dishes(nameDish: "Ravioli", ingredientDish: [.spinach, .sauce],imageDish: "ravioli", category: .food, price: 5.0),
            Dishes(nameDish: "Pizza", ingredientDish: [.spinach, .sauce],imageDish: "pizza", category: .food, price: 9),
            
            Dishes(nameDish: "Brownie", ingredientDish: [.chocolate, .flour, .eggs, .sugar],imageDish: "brownie", category: .dessert, price: 3.5),
            Dishes(nameDish: "Pudding", ingredientDish: [.flour, .eggs, .milk, .sugar],imageDish: "pudding", category: .dessert, price: 1.5),
            Dishes(nameDish: "Ice Cream", ingredientDish: [.milk, .chocolate],imageDish: "icecream", category: .dessert, price: 2.5),
            Dishes(nameDish: "Carrot Cake", ingredientDish: [.flour, .carrot, .eggs, .sugar],imageDish: "carrotsCake", category: .dessert, price: 3.0),
            
            Dishes(nameDish: "Coffee", ingredientDish: [],imageDish: "coffee", category: .drinks, price: 1.5),
            Dishes(nameDish: "Water", ingredientDish: [],imageDish: "water", category: .drinks, price: 1.0),
            Dishes(nameDish: "Soft Drinks", ingredientDish: [],imageDish: "softDrinks", category: .drinks, price: 2.5),
            Dishes(nameDish: "Tea", ingredientDish: [],imageDish: "tea", category: .drinks, price: 4.5),
            Dishes(nameDish: "Whiskey", ingredientDish: [],imageDish: "whiskey", category: .drinks, price: 5.5),
            Dishes(nameDish: "Amaretto", ingredientDish: [],imageDish: "amaretto", category: .drinks, price: 4.3),
            Dishes(nameDish: "Wine", ingredientDish: [],imageDish: "redWine", category: .drinks, price: 3.0)
        ]
    }
}
