//
//  DashboardViewController.swift
//  CollectionDashboard
//
//  Created by Craig Clayton on 12/11/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

enum HomeSection {
    case title(String, Bool)
}

class DashboardViewController: UIViewController {
    lazy var sections: [Section] = [
    ]

    @IBOutlet weak var collectionView: UICollectionView!

    lazy var collectionViewLayout: UICollectionViewLayout = {
        return UICollectionViewLayout()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    func setupCollectionView() {
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    }
}

extension DashboardViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        UICollectionViewCell()
    }
}

extension DashboardViewController: UICollectionViewDelegate {}
