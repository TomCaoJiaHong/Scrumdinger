//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-11.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form{
            Section(header: Text("Meeting Indo")){
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lengthInMinutes, in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                }
            }
            
            Section(header: Text("Attendees")){
                ForEach(data.attendees){
                    addendee in
                    Text(addendee.name)
                }
                .onDelete{
                    indices in
                    data.attendees.remove(atOffsets: indices)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {withAnimation{
                        let attendee = DailyScrum.Attendee(name: newAttendeeName)
                        data.attendees.append(attendee)
                        newAttendeeName = ""
                    }}){
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
