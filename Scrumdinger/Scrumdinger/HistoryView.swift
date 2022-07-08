//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-07-07.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Divider()
                    .padding(.bottom)
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History{
        History(attendees: [DailyScrum.Attendee(name: "Jon"), DailyScrum.Attendee(name: "Darla"), DailyScrum.Attendee(name: "Luis")], lengthInMinutes: 10, transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
    }
    
    static var previews: some View {
        HistoryView(history: history)
    }
}
