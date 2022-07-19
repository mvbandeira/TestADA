//
//  TrendingViewController+UICollectionViewDataSource.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit

extension TrendingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if state == 0 {
            return todayMovies.count
        }
        else if state == 1 {
            return weekMovies.count
        }
        else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = trendingCollectionView.dequeueReusableCell(withReuseIdentifier: "trendingCell", for: indexPath) as? TrendingCollectionViewCell else {
            
            return UICollectionViewCell()
        }
        
        if state == 0 {
            
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
        else if state == 1 {
            
            let movie = weekMovies[indexPath.item]
            
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
        
        return UICollectionViewCell()
    }
    
}
