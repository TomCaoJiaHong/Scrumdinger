//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-08.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $store.scrums){
                    Task{
                        do{
                            try await ScrumStore.save(scrums: store.scrums)
                        }catch{
                            fatalError("Error saving scrums")
                        }
                    }
                }
            }
            
            .onAppear{
                ScrumStore.load{
                    result in
                    switch result{
                    case.failure(let error):
                        fatalError(error.localizedDescription)
                    case.success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
            .task {
                do{
                    store.scrums = try await ScrumStore.load()
                }catch{
                    fatalError("Error saving scrums")
                }
            }
        }
    }
}
