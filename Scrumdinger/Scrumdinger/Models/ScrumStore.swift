//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-22.
//

import Foundation
import SwiftUI

class ScrumStore: ObservableObject{
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL{
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("scrums.data")
    }
}
