//
//  Order.swift
//  AppetizerApp
//
//  Created by Maliha on 27.06.2024.
//

import SwiftUI
final class Order : ObservableObject{
    
    @Published var items : [Appetizer] = []
    
    var totalPrice : Double{
        items.reduce(0){$0+$1.price}
    }
    
    func add(appetizer: Appetizer){
        items.append(appetizer)
        
    }
    
    func deleteOrders(at offSets:IndexSet){
        items.remove(atOffsets: offSets)
    }
}
