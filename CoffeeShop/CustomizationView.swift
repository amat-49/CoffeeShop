//
//  CustomizationView.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 10/13/25.
//

import SwiftUI

struct CustomizationView: View {
    //Variables and states
    @State var coffee: Coffee
    @State var customerName: String
    @State var showingSheet = false
    @State var specialRequest : String = ""

    
    var body: some View {
        VStack{
            Image(coffee.assetName)
                .resizable()
                .frame(width: 200, height: 200)
            
            //TODO: Scoops picker
            Text("Size")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
            Picker("Pick a size", selection: $coffee.cupSize) {
                ForEach(CupSizes.allCases, id:\.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding(.leading, 15)
            .padding(.trailing, 15)
            
            //TODO: Sprinkles picker
            Text("Milk")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(15)
            Picker("Pick a milk type", selection: $coffee.milk) {
                ForEach(Milk.allCases, id:\.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding(.leading, 15)
            .padding(.trailing, 15)
            
            //TODO: Spoons stepper
            Stepper("Sugar:       \(coffee.sugar)", value: $coffee.sugar, in: 0...3)
                .font(.title2)
                .padding(15)
                
            
            //TODO: InCup toggle
            Toggle("Iced", isOn:$coffee.iced)
                .font(.title2)
                .padding(.leading, 15)
                .padding(.trailing, 15)
            
            //TODO: customerName text field
            TextField("Customer Name", text: $customerName)
                .font(.title2)
                .padding()

            
            //TODO: special requuests
            TextField("Special Requests", text: $specialRequest)
                .font(.title2)
                .padding(15)
            
            
            Button {
                // action
                updateOrder()
                showingSheet.toggle()
            } label: {
                // what it looks like
                Text("View Order")
            }
            .padding(20)
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .padding(.top,20)
            
        }
        .sheet(isPresented: $showingSheet){
            OrderConfirmationView(coffee: coffee, customerName: customerName)
        }
    }
    
    func updateOrder() {
        if specialRequest != "" {
            coffee.specialRequests = specialRequest
        }
    }
    
}

#Preview {
    CustomizationView(coffee: Coffee(name: "Latte", assetName: "latte"), customerName: "")
}
