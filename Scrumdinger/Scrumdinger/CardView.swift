//
//  CardView.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-09.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title).font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock").padding(.trailing, 20)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum).background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 500, height: 60))
    }
}
