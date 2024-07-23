//
//  Alert.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {

    // Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server is invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("URL Error"),
                                       message: Text("The URL is not valid invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("The response  received from the server is invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    
    
    static let invalidToComplete = AlertItem(title: Text("Server Error"),
                                             message: Text("Please check your inernet connection. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    
    // Accounts Alerts
    static let invalidForm = AlertItem(title: Text("Data Error"),
                                           message: Text("Please check you provided data."),
                                              dismissButton: .default(Text("OK")))
    
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                             message: Text("Please check your email."),
                                              dismissButton: .default(Text("OK")))
    
    
    // Users  Alerts
    static let userSaveSuccess = AlertItem(title: Text("Profile Save"),
                                           message: Text("Your profile information was successfully saved"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidProfile = AlertItem(title: Text("Invalid Profile"),
                                             message: Text("Your profile information was not saved"),
                                              dismissButton: .default(Text("OK")))
    
    
    
    
}

