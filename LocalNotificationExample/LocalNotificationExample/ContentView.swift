//
//  ContentView.swift
//  LocalNotificationExample
//
//  Created by AS on 12/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Button("Request Permission") {
                    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
                        if granted {
                            print("Permission granted")
                        } else if let error = error {
                            print("Error: \(error.localizedDescription)")
                        }
                    }
                }

                Button("Schedule Notification") {
                    // 2. Create the content for the notification
                    let content = UNMutableNotificationContent()
                    content.title = "Reminder"
                    content.body = "Don't forget to check the app!"
                    content.sound = UNNotificationSound.default

                    // 3. Set up a trigger for the notification
                    // For example, 5 minutes from now
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: (5 * 60), repeats: false)

                    // 4. Create the request
                    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                    // 5. Add the request to the notification center
                    UNUserNotificationCenter.current().add(request)
                }
            }
        }
}

#Preview {
    ContentView()
}
