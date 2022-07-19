//
//  TrendingCollectionViewCell.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit

class TrendingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "trendingCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, date: String, image: UIImage) {
        titleLabel.text = title
        dateLabel.text = date
        imageView.image = image
    }
    
}
