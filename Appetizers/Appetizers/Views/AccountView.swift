//
//  AccountView.swift
//  Appetizers
//
//  Created by AS on 1/21/24.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    Button {
                        print("Save")
                    } label: {
                        Text("Save changes")
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                } header: {
                    Text("Requests")
                }

            }
            
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
