//
//  TrendingViewController.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit
    
class TrendingViewController: UIViewController {
    
    var todayMovies: [Movie] = []
    
    @IBOutlet var trendingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        trendingCollectionView.dataSource = self
        
        Task {
            self.todayMovies = await Movie.trendingTodayMoviesAPI()
            self.trendingCollectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return todayMovies.count
    }

}
