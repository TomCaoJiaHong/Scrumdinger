//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by 曹嘉鸿 on 2022-06-28.
//

import Foundation

struct ErrorWrapper: Identifiable{
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
