//
//  FormPractice.swift
//  ContactForm
//
//  Created by AS on 12/13/23.
//

import SwiftUI

struct FormPractice: View {
    @State private var emailAddress = ""
    @State private var message = "Write you message here..."
    @State private var includeLogs = false
    
    var body: some View {
        Form {
            Section(content: {
                   TextField("Email Address", text: $emailAddress)

            }, header: {
                Text("How can we reach you?")
            })
            TextEditor(text: $message)
            Toggle("Include Logs", isOn: $includeLogs)
            Button("Submit") {
                print("Submit Button tapped")
            }
        }
    }
}

struct FormPractice_Previews: PreviewProvider {
    static var previews: some View {
        FormPractice()
    }
}
