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
        TitleSection(title: "DISCOVER NEW PLACES"),
        DiscoverSection(),
        TitleSection(title: "POPULAR THIS WEEK"),
        PopularSection(),
        TitleSection(title: "QUICK LINKS"),
        LinkSection(items: ["Link 1",
                            "Link 2",
                            "Link 3",
                            "Link 4",
                            "Link 5",
                            "Link 6"]
        )
    ]

    @IBOutlet weak var collectionView: UICollectionView!

    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections

        let layout = UICollectionViewCompositionalLayout {
            (sectionIndex, _) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }

        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    func setupCollectionView() {
        let cells: [RegisterableView] = [.nib(PopularCell.self),
                                         .nib(TitleCell.self),
                                         .nib(DiscoverCell.self),
                                         .nib(LinkCell.self)]

        collectionView.collectionViewLayout = collectionViewLayout
        collectionView.register(cells: cells)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}

extension DashboardViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        sections[indexPath.section].configureCell(collectionView: collectionView, indexPath: indexPath)
    }
}

extension DashboardViewController: UICollectionViewDelegate {}
