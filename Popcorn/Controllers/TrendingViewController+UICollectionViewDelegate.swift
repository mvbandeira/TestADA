//
//  TrendingViewController+UICollectionViewDelegate.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit

extension TrendingViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        var movie: Movie
        
        if self.state == 0 {
            movie = todayMovies[indexPath.item]
        } else {
            movie = weekMovies[indexPath.item]
        }
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
}
