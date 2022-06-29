//
//  SpeakerArc.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-29.
//

import SwiftUI

struct SpeakerArc: Shape{
    let speakerIndex: Int
    let totalSpeakers: Int
    
    private var degreesPerSpeaker: Double{
        360.0 / Double(totalSpeakers)
    }
    
    private var startAngle: Angle{
        Angle(degrees: degreesPerSpeaker * Double(speakerIndex) + 1.0)
    }
    
    private var endAngle: Angle{
        Angle(degrees: startAngle.degrees + degreesPerSpeaker - 1.0)
    }
    
    func path(in rect: CGRect) -> Path {
        return Path{
            path in
        }
    }
}
