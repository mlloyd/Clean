//
//  ProgrammersTableViewCell.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import UIKit

class ProgrammersTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var interviewDate: UILabel!
    @IBOutlet weak var favourite: UILabel!
}

extension ProgrammersTableViewCell: ProgrammerCellView {

    func display(name: String) {
        self.name.text = name
    }

    func display(date: String) {
        self.interviewDate.text = date
    }

    func display(favourite: Bool) {
        self.favourite.isHidden = !favourite
    }
}
