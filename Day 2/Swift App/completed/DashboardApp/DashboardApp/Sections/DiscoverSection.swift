
//
//  DiscoverCell.swift
//  DashboardApp
//
//  Created by Craig Clayton on 12/11/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit


struct DiscoverSection: Section {
    let numberOfItems = 6

    func layoutSection() -> NSCollectionLayoutSection {
        // Section 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))

        // Section 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        // Section 3
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(220), heightDimension: .absolute(315))

        // Section 4
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

        // Section 5
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: DiscoverCell.self), for: indexPath)
        return cell
    }
}
