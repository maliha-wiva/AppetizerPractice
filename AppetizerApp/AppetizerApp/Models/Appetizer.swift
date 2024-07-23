//
//  Appetizer.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    var id : Int
    let description : String
    let imageURL : String
    let name : String
    let price : Double
    let calories : Int
    let protein : Int
    let carbs : Int
    
    
    
}

struct AppetizerResponse: Decodable{
    let request : [Appetizer]
}

struct MalihaData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           description: "This is the description for my appetizer. It's yummy.",
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appitizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne     = Appetizer(id: 001,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            imageURL: "",
                                            name: "Test Appetizer One",
                                            price: 9.99,
                                            calories: 99,
                                            protein: 99,
                                            carbs: 99)
    
    static let orderItemTwo     = Appetizer(id: 002,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            imageURL: "",
                                            name: "Test Appetizer Two",
                                            price: 9.99,
                                            calories: 99,
                                            protein: 99,
                                            carbs: 99)
    
    static let orderItemThree   = Appetizer(id: 003,
                                            description: "This is the description for my appetizer. It's yummy.",
                                            imageURL: "",
                                            name: "Test Appetizer Three",
                                            price: 9.99,
                                            calories: 99,
                                            protein: 99,
                                            carbs: 99)
    
    static let orders       = [orderItemOne, orderItemTwo, orderItemThree]
}

