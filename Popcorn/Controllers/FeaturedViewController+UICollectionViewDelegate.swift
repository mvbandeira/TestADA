//
//  FeaturedViewController+UICollectionViewDelegate.swift
//  Popcorn
//
//  Created by mvbsa on 13/07/22.
//

import UIKit

extension FeaturedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let movie: Movie
        
        if collectionView == popularCollectionView {
            movie = popularMovies[indexPath.item]
        } else if collectionView == nowPlayingCollectionView {
            movie = nowPlayingMovies[indexPath.item]
        } else {
            movie = popularMovies[indexPath.item]
        }
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
}
