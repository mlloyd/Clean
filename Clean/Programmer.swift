//
//  Programmer.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

struct Programmer {
    let firstName: String
    let lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    let emacs: Int
    let caffine: Int
    let rating: Int
    let interviewDate: Date
    let favourite: Bool
}
