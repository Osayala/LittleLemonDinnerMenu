//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 17/05/2023.
//

import SwiftUI


struct MenuItemDetailsView: View {
    var dish: Dishes
    var order: MenuOrder
    init(_ dish:Dishes, _ order:MenuOrder){
        self.dish = dish
        self.order = order
    }
    
    var body: some View {
        VStack {
            Image(dish.imageDish)
                .resizable()
                .frame(width: 350, height: 220)
            Text("\(dish.nameDish) \n" )
                .font(.largeTitle)
                .bold()
            
            Text("Price p/u:")
                .bold()
                .font(.title2)
            let priceDecimal = String(format:"%.2f",dish.price)
            Text("\(priceDecimal)€ \n")
            Text("Ordered:")
                .bold()
                .font(.title2)
            Text("\(order.order) \n")
            if dish.ingredientDish.isEmpty {} else {
                Text("Ingredients:")
                    .bold()
                    .font(.title2)
                ForEach(dish.ingredientDish, id: \.self) {item in
                    Text(item.rawValue)
                }
            }
            Spacer()
        }
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let exampleDish2 = Dishes(nameDish: "Chicken Salad", ingredientDish: [.spinach, .sauce],imageDish: "chickenSalad", category: FilterOption.Categories.food, price: 8.5)
        let exampleOrder = MenuOrder()
        MenuItemDetailsView(exampleDish2, exampleOrder )
    }
}
