//
//  SaveProgrammersListUseCase.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

// Interactor

class ShowProgrammersListUseCase {

    let entityGateway: EntityGateway
    var presenter: ProgrammersListPresentation!

    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }

    func showProgrammers() {
        // 1. fetch programmers data
        let programmers = entityGateway.fetchProgrammers()

        // 2. Process programmers data
        let programmersResponses = programmers.map { ProgrammerResponse(programmer: $0) }

        // 3. Present
        self.presenter.present(programmersResponses: programmersResponses)
    }
}
