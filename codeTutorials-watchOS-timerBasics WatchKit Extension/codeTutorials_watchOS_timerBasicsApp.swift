//
//  codeTutorials_watchOS_timerBasicsApp.swift
//  codeTutorials-watchOS-timerBasics WatchKit Extension
//
//  Created by Theodore Lietz on 11/14/21.
//

import SwiftUI

@main
struct codeTutorials_watchOS_timerBasicsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
