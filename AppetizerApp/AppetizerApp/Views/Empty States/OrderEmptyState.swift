//
//  OrderEmptyState.swift
//  AppetizerApp
//
//  Created by Maliha on 27.06.2024.
//

import SwiftUI

struct OrderEmptyState: View {
    
    var imageName : String
    var message : String 
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                Text(message)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
            }
            .offset(y: -50)
        }
        
        
    }
}

#Preview {
    OrderEmptyState(imageName: "empty-order", message: "Default message!")
}
