//
//  MenuOptionsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Oscar Suarez on 15/05/2023.
//

import SwiftUI

struct MenuOptionsView: View {
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    Section(header: Text("SELECTED CATEGORY")){
                        ForEach(category, id: \.self){ item in
                            Text(item.rawValue)
                        }
                    }
               }
                List{
                    Section(header: Text("SORT BY")){
                        ForEach(sortby, id: \.self){ item in
                            Text(item.rawValue)
                        }
                    }
               }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Filters")
        }
        
    }
}

struct MenuOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionsView()
    }
}
