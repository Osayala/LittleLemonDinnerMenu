//
//  DishView.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 12/05/2023.
//

import SwiftUI

struct DishView: View {
    @State var dish: Dishes
    
//    init(_ dish:Dishes){
//        self.dish = dish
//    }
    var body: some View {
        VStack{
            Image(dish.imageDish)
                .resizable()
                .frame(width: 120, height: 100)
            Text(dish.nameDish)
                .font(.body)
                .bold()
        }
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        let exampleDish = Dishes(nameDish: "Chicken Salad", imageDish: "chickenSalad")
        DishView(dish: exampleDish)
    }
}
