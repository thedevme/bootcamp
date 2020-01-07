//
//  LinkCell.swift
//  DashboardApp
//
//  Created by Craig Clayton on 12/12/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import UIKit

class LinkCell: UICollectionViewCell {
    
    @IBOutlet private var lblTitle: UILabel!
    
    @IBOutlet weak var iconWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var linePaddingContraint: NSLayoutConstraint!
    @IBOutlet weak var lblPaddingContraint: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(title: String) {
        lblTitle.text = title
    }

    func areIconsVisible(value: Bool) {
        if value {
            iconWidthConstraint.constant = 24
            lblPaddingContraint.constant = 10
            linePaddingContraint.constant = 41
        } else {
            iconWidthConstraint.constant = 0
            lblPaddingContraint.constant = 4
            linePaddingContraint.constant = 12
        }
    }
}
