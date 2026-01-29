//
//  CoffeeTileView.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/13/25.
//

import SwiftUI

struct CoffeeTileView: View {
    var coffee: Coffee
    var body: some View {
        
        VStack {
            Image(coffee.assetName)
                .resizable()
                .scaledToFit()
                .frame(width:200, height:200)
                .shadow(radius: 5)

            Text(coffee.name)
                .font(.headline)
                .padding(.bottom, 30)
                .foregroundStyle(.black)
            

        }
        .frame(width:200, height:250)
        .background(RoundedRectangle(cornerRadius: 30))
        .foregroundStyle(.red)
        .shadow(radius: 5)
        .padding()
    
    }
}

#Preview {
    CoffeeTileView(coffee: Coffee(name: "Latte", assetName: "latte"))
}
