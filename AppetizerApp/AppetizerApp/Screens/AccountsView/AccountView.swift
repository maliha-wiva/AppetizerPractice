//
//  AccountView.swift
//  AppetizerApp
//
//  Created by Maliha on 24.06.2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var accountViewModel  = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $accountViewModel.user.firstName)
                    TextField("Last Name", text: $accountViewModel.user.lastName)
                    TextField("Email", text: $accountViewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $accountViewModel.user.birthday, displayedComponents: .date)
                    Button{
                        print("Save")
                        accountViewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $accountViewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $accountViewModel.user.frequentRefills)
                        
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary)) // this is for all the toggles inside this section
            }
            .navigationTitle("Accounts")
        }
        .onAppear{
            accountViewModel.retriveUser()
        }
        .alert(item: $accountViewModel.alertItem){alertItem in
            Alert(title: alertItem.title, message:
                    alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
        
    }
}

#Preview {
    AccountView()
}
