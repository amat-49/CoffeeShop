//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/13/25.
//

import SwiftUI

struct MainView: View {
    //Array of coffee 4 drinks, Changed it to let
    var coffeeDrinks: [Coffee] = [
        Coffee(name: "Latte", assetName: "latte"),
        Coffee(name: "Espresso", assetName: "espresso"),
        Coffee(name: "Cappuccino", assetName: "cappuccino"),
        Coffee(name: "Batch Brew", assetName: "batchbrew"),
        Coffee(name: "Macchiato", assetName: "macchiato")
    ]
    
    var specialDrinks: [Coffee] = [
        Coffee(name: "Latte", assetName: "latte"),
    ]
    
    
    var body: some View {
        
        NavigationStack {
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .accessibilityLabel("Image of the logo")
            
            ScrollView(.vertical, showsIndicators: true) {
                Text("Choose your Coffee. . .")
                    .font(Font.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                    
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(coffeeDrinks, id: \.self) { coffee in
                            
                            NavigationLink{
                                CustomizationView(coffee: coffee, customerName: "")
                            } label: {
                                CoffeeTileView(coffee: Coffee(name: coffee.name, assetName: coffee.assetName))
                            }
                        }
                    }
                }
            
                
            }
        }//end of navigation stack
    }
}

#Preview {
   MainView()
}
