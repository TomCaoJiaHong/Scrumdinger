//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-29.
//

import SwiftUI

struct MeetingTimerView: View {
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay{
                Text("Placeholder")
            }
    }
}

struct MeetingTimerView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingTimerView()
    }
}
