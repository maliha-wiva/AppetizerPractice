//
//  AppetizerListView.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var appetizerViewModel = AppetizerListViewModel()
    
    var body: some View {
        
        ZStack{
            NavigationView{
                List(appetizerViewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)             
                        .onTapGesture {
                            appetizerViewModel.selectedAppetizer = appetizer
                            appetizerViewModel.isShowingDetailView = true
                        }
                }
                .navigationTitle("Appetizer")
                .listStyle(.plain)
                .disabled(appetizerViewModel.isShowingDetailView)
            }
            .onAppear(){
                appetizerViewModel.getAppetizers()
            }
            .blur(radius: appetizerViewModel.isShowingDetailView ? 20 : 0)
            if appetizerViewModel.isShowingDetailView{
                AppetizerDetailView(appetizer: appetizerViewModel.selectedAppetizer!,
                                    isShowingDetailView: $appetizerViewModel.isShowingDetailView)
            }
            if appetizerViewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $appetizerViewModel.alletitem){ alertitem in
            Alert(title: alertitem.title,
                  message: alertitem.message,
                  dismissButton: alertitem.dismissButton)
        }
       
    }
    
    func justReadThePlist(){
        if let path = Bundle.main.path(forResource: "Filters", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path) as? [String: Any] {
            
            let dietLabels = dict["DietLabels"] as? [String] ?? []
            let healthLabels = dict["HealthLabels"] as? [String] ?? []
            let cuisineTypes = dict["CuisineTypes"] as? [String] ?? []
            let mealTypes = dict["MealTypes"] as? [String] ?? []
            let dishTypes = dict["DishTypes"] as? [String] ?? []
            
            print("Diet Labels: \(dietLabels)")
            print("Health Labels: \(healthLabels)")
            print("Cuisine Types: \(cuisineTypes)")
            print("Meal Types: \(mealTypes)")
            print("Dish Types: \(dishTypes)")
        }
    }
    
}

#Preview {
    AppetizerListView()
}
