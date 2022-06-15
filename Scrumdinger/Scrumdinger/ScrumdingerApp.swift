//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
