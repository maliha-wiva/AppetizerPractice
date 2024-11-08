//
//  RemoteImage.swift
//  AppetizerApp
//
//  Created by Maliha on 25.06.2024.
//

import SwiftUI
final class ImageLoader: ObservableObject{
    @Published var image : Image? = nil
    
    func load(fromUrlString urlString: String){
        NetworkManager.shared.downloadImage(fromUrlString: urlString) { uiimage in
            
            
            guard uiimage != nil else{ return}
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: (uiimage ?? UIImage(named: "food-placeholder"))!)
 
            }
        }
    }
    
}

struct RemoteImage: View {
    
    var image : Image?
    
    var body: some View{
        
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct appetizerImageLoader: View {
    @StateObject var imageLoader  = ImageLoader()
    let stringUrl: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear(){
                imageLoader.load(fromUrlString: stringUrl)
            }
    }
}
