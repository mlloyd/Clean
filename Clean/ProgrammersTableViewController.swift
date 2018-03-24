//
//  ProgrammersTableViewController.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {

    var presenter: ProgrammersListPresenter!

    private let reuseIdentifier = "aCell"

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewReady()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as! ProgrammersTableViewCell
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }
}
