//
//  TrendingViewController+UICollectionViewDataSource.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit

extension TrendingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = trendingCollectionView.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as? TrendingCollectionViewCell else {
            
            return UICollectionViewCell()
        }
        
        let movie = todayMovies[indexPath.item]
        
        cell.setup(title: movie.title,
                   date: "\(movie.releaseDate.prefix(4))",
                   image: UIImage())
        
        Task {
            let imageData = await Movie.downloadImageData(withPath: movie.posterPath)
            let image = UIImage(data: imageData) ?? UIImage()
            cell.setup(title: movie.title,
                       date: "\(todayMovies[indexPath.item].releaseDate.prefix(4))",
                       image: image)
        }
        
        return cell
    }
    
}
