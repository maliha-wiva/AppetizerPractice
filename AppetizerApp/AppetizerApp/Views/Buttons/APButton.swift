//
//  APButton.swift
//  AppetizerApp
//
//  Created by Maliha on 26.06.2024.
//

import SwiftUI

struct APButton: View {
    
    var title : LocalizedStringKey
    
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
        
    }
}

#Preview {
    APButton(title: "Text")
}
