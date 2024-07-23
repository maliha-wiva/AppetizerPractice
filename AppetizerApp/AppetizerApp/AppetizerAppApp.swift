//
//  AppetizerAppApp.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

@main
struct AppetizerAppApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
