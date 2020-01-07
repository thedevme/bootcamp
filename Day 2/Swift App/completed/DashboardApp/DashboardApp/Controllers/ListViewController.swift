//
//  ListViewController.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var states:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }

    func setupData() {
        self.states = ListDataManager.states

    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListDataManager.states.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = self.states[indexPath.item]

        cell.textLabel?.text = item

        return cell
    }
}
