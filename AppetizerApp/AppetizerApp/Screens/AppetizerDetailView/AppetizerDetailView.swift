//
//  AppetizerDetailView.swift
//  AppetizerApp
//
//  Created by Maliha on 26.06.2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        VStack{
            appetizerImageLoader(stringUrl: appetizer.imageURL)
                .aspectRatio(contentMode:.fit)
                .frame(width: 300, height: 225)
            
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding()
                HStack(spacing: 40){
                    NutrientInfoView(title: "Calories", value: appetizer.calories)
                    NutrientInfoView(title: "Carbs", value: appetizer.carbs)
                    NutrientInfoView(title: "Protien", value: appetizer.protein)
                }
            }
            Spacer()
            Button{
                print("tapped to place order")
                order.items.append(appetizer)
                isShowingDetailView = false
            }label: {
//                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 10)
        .overlay(Button{
            print("dissmiss")
            isShowingDetailView = false
        }label: {
            APDissmisButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MalihaData.sampleAppetizer, isShowingDetailView: .constant(true))
}

struct NutrientInfoView: View {
    
    let title : String
    let value : Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
