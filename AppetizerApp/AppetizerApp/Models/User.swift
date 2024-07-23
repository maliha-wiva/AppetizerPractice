//
//  User.swift
//  AppetizerApp
//
//  Created by Maliha on 27.06.2024.
//

import Foundation
struct User: Codable {
    var firstName : String    = ""
    var lastName  : String    = ""
    var email     : String    = ""
    var birthday  : Date      = Date()
    var extraNapkins          = false
    var frequentRefills       = false
}
