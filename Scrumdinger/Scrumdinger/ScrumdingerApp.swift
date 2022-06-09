//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
