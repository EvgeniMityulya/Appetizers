//
//  User.swift
//  Appetizers
//
//  Created by Евгений Митюля on 9/7/24.
//

import Foundation

struct User: Codable {
    var firstName      = ""
    var lastName       = ""
    var email          = ""
    var birthdate      = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
