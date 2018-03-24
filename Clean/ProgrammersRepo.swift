//
//  ProgrammersRepo.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

class ProgrammersRepo {

    var programmers: [Programmer]

    init() {
        self.programmers = [
            Programmer(firstName: "fred", lastName: "something", emacs: 2, caffine: 3, rating: 4, interviewDate: Date(), favourite: true),
            Programmer(firstName: "bar", lastName: "so", emacs: 5, caffine: 3, rating: 1, interviewDate: Date(), favourite: true),
            Programmer(firstName: "foo", lastName: "thing", emacs: 2, caffine: 3, rating: 4, interviewDate: Date(), favourite: false),
            Programmer(firstName: "bill", lastName: "thing", emacs: 1, caffine: 3, rating: 2, interviewDate: Date(), favourite: true),
            Programmer(firstName: "tom", lastName: "hello world", emacs: 4, caffine: 3, rating: 4, interviewDate: Date(), favourite: false),
            Programmer(firstName: "martin", lastName: "something", emacs: 2, caffine: 3, rating: 3, interviewDate: Date(), favourite: true),
            Programmer(firstName: "james", lastName: "something", emacs: 1, caffine: 3, rating: 4, interviewDate: Date(), favourite: false)
        ]
    }
}

extension ProgrammersRepo: EntityGateway {

    func fetchProgrammers() -> [Programmer] {
        return self.programmers        
    }
}
