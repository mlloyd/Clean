//
//  ProgrammersListPresenter.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

class ProgrammersListPresenter {
    private var programmersResponses = [ProgrammerResponse]()
    private let useCase: ShowProgrammersListUseCase

    init(useCase: ShowProgrammersListUseCase) {
        self.useCase = useCase
    }

    func viewReady() {
        useCase.showProgrammers()
    }

    var numberOfRows: Int {
        return programmersResponses.count
    }

    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let programmer = programmersResponses[row]
        cell.display(name: programmer.fullName)
        cell.display(date: programmer.interviewDate.relativeDescription())
        cell.display(favourite: programmer.favourite)
    }
}

extension ProgrammersListPresenter: ProgrammersListPresentation {

    func present(programmersResponses: [ProgrammerResponse]) {
        self.programmersResponses = programmersResponses
    }
}
