//
//  OrderView.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteOrders)
                    }
                    .listStyle(.plain)
                    Button{
                        
                    }label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty {
                    OrderEmptyState(imageName: "empty-order", message: " this is the default order this is so long to handle just to check the ui experience")
                }
            }
            .navigationTitle("🧾 Orders")
            
        }
    }
}

#Preview {
    OrderView()
}
