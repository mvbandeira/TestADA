//
//  UpcomingCollectionViewCell.swift
//  Popcorn
//
//  Created by mvbsa on 18/07/22.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "upcomingCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, date: String, image: UIImage) {
        titleLabel.text = title
        dateLabel.text = date
        imageView.image = image
    }
}
