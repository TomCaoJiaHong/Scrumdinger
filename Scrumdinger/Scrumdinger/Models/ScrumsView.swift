//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-09.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums){
                scrum in
                CardView(scrum: scrum).listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
