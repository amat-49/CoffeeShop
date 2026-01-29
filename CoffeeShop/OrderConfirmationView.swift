//
//  OrderConfirmationView.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/13/25.
//

import SwiftUI

struct OrderConfirmationView: View {
    let coffee: Coffee
    let customerName: String
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            ZStack{
                RoundedRectangle(cornerRadius: 40, style: .continuous)
                    .fill(.myBrown)
                    .shadow(radius: 10)
                
                VStack{
                    Text("Order Confirmed")
                        .font(.title2).bold()
                    Text("Thank you for your order:  \(customerName)\nYou ordered a \(coffee.cupSize.rawValue) \(coffee.name) with \(coffee.milk.rawValue) milk")
                        .font(.title3)
                        .padding(10)
                    
                    if let specialRequest = coffee.specialRequests {
                        Text("Your special request:  \(specialRequest)")
                            .font(.title2)
                            .padding(5)
                    }

                    Text("Total price is $\(coffee.calculatePrice(), specifier: "%.2f")")
                        .font(Font.title2.bold())
                        .padding(5)
                    
                }
            }
            .padding()
            .padding(.bottom, 50)
            
            
            
            
        }
        
    }
}

#Preview {
    OrderConfirmationView(coffee: Coffee(name: "Latte", assetName: "latte"), customerName: "Amat")
}
