//
//  AppetizerListViewModel.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

final class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers : [Appetizer] = []
    @Published var alletitem : AlertItem?
    @Published var isLoading : Bool = false
    
    @Published var isShowingDetailView =  false
    @Published var selectedAppetizer :  Appetizer?
    
    func getAppetizers() {
        self.isLoading = true
        NetworkManager.shared.getAppetizers{ result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case . failure(let error):
                    print(error.localizedDescription)
                    switch error {
                    case .invalidURL:
                        self.alletitem = AlertContext.invalidURL
                    case .invalidData:
                        self.alletitem = AlertContext.invalidData
                    case .unableToComplete:
                        self.alletitem = AlertContext.invalidToComplete
                    case .invalidResponse:
                        self.alletitem = AlertContext.invalidResponse
                        
                    }
                    
                }
            }
        }
    }
}
