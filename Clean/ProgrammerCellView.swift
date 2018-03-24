//
//  ProgrammerCellView.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(date: String)
    func display(favourite: Bool)
}
