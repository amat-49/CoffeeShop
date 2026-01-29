//
//  startView.swift
//  CoffeeShop
//
//  Created by Amat Addoais on 1/6/26.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationStack {
            ZStack { // to layer background
                LinearGradient(
                    colors: [Color.myBrown, Color.white],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea(edges: .all)
                
                VStack(spacing: 20) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200, maxHeight: 200)
                        
//                    Button {
//                        //ContentView()
//                    } label: {
//                        Text("Get Started")
//                    }
//                    .frame(maxWidth: 150)
//                    .padding(20)
//                    .background(.black)
//                    .foregroundStyle(.white)
//                    .clipShape(Capsule())
//                    .padding(.top,20)
//                    
                }
                .padding(.bottom, 100)

            }
        }
        
    }
}

#Preview {
    StartView()
}
