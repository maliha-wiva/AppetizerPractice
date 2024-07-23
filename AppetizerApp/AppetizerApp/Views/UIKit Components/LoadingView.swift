//
//  LoadingView.swift
//  AppetizerApp
//
//  Created by Maliha on 25.06.2024.
//

import SwiftUI
struct ActivityIndicator: UIViewRepresentable{
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicator  = UIActivityIndicatorView(style: .large)
        activityIndicator.color = UIColor.brandPrimaryC
        activityIndicator.startAnimating()
        return activityIndicator
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) { }
    
}

struct LoadingView : View {
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ActivityIndicator()
        }
    }
    
}
