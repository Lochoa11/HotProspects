//
//  Prospect.swift
//  HotProspects
//
//  Created by Lin Ochoa on 2/18/25.
//
import Foundation
import SwiftData

@Model
class Prospect {
    var name: String
    var emailAddress: String
    var isContacted: Bool
    var meetingDate = Date.now
    
    init(name: String, emailAddress: String, isContacted: Bool) {
        self.name = name
        self.emailAddress = emailAddress
        self.isContacted = isContacted
        self.meetingDate = Date()
    }
}
