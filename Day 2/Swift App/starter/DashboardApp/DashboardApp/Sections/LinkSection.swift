//
//  LinkSection.swift
//  DashboardApp
//
//  Created by Craig Clayton on 12/12/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

struct LinkSection: Section {
    var numberOfItems = 0
    private var items: [String] = []

    init(items: [String]) {
        self.items = items
        self.numberOfItems = items.count
    }

    func layoutSection() -> NSCollectionLayoutSection {
        // Step 1
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))

        // Step 2
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        // Step 3
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(38))

        // Step 4
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])

        // Step 5
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0)

        return section
    }

    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: LinkCell.self), for: indexPath) as! LinkCell
        cell.set(title: items[indexPath.row])

        return cell
    }
}

