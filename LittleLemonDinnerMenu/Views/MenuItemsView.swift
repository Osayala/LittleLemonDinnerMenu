//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 10/05/2023.
//

import SwiftUI

struct MenuItemsView: View {
  
    @ObservedObject var model = Model()
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    var body: some View {
        var food = model.menuItems.filter{$0.category == FilterOption.Categories.food}
        let drinks = model.menuItems.filter{$0.category == FilterOption.Categories.drinks}
        let dessert = model.menuItems.filter{$0.category == FilterOption.Categories.dessert}
    
        let count = MenuOrder()
        NavigationView {
            
            VStack{
                
                ScrollView(.vertical){
                    VStack{
                 
                            HStack{
                                Text("Food")
                                    .font(.title)
                                    .padding()
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                            }
                            LazyVGrid(columns: layout, spacing: 20){
                                ForEach(food) {item in
                                    NavigationLink(destination: MenuItemDetailsView(item, count)){
                                        DishView(dish: item)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal)
                                                    
                            HStack{
                                Text("Drinks")
                                    .font(.title)
                                    .padding()
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                            }
                            LazyVGrid(columns: layout, spacing: 20){
                                ForEach(drinks) {item in
                                    NavigationLink(destination: MenuItemDetailsView(item, count)){
                                        DishView(dish: item)
                                    }
                                }
                            }
                            .padding(.horizontal)
                            HStack{
                                Text("Dessert")
                                    .font(.title)
                                    .padding()
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                            }
                            LazyVGrid(columns: layout, spacing: 20){
                                ForEach(dessert) {item in
                                    NavigationLink(destination: MenuItemDetailsView(item,count)){
                                        DishView(dish: item)
                                    }
                                }
                            }
                            .padding(.horizontal)
                       
                    }
                    .navigationBarTitle("Menu")
                    .navigationBarHidden(false)
                    .toolbar {
                        NavigationLink(destination: MenuOptionsView(), label: {
                                Label("Menu", systemImage: "line.3.horizontal.decrease.circle")
                            })
                    }
                }
            }
        }
    }
        
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
