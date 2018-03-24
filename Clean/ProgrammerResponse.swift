//
//  ProgrammerResponse.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

struct ProgrammerResponse {
    let fullName: String
    let interviewDate: Date
    let favourite: Bool
}

extension ProgrammerResponse {
    init(programmer: Programmer) {
        self.fullName = programmer.fullName
        self.interviewDate = programmer.interviewDate
        self.favourite = programmer.favourite
    }
}
