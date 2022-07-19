//
//  TrendingViewController.swift
//  Popcorn
//
//  Created by mvbsa on 19/07/22.
//

import UIKit
    
class TrendingViewController: UIViewController {
    
    var state: Int = 0
    
    var todayMovies: [Movie] = []
    var weekMovies: [Movie] = []
    
    @IBOutlet var trendingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        trendingCollectionView.dataSource = self
        
        Task {
            self.todayMovies = await Movie.trendingTodayMoviesAPI()
            self.weekMovies = await Movie.trendingWeekMoviesAPI()
            self.trendingCollectionView.reloadData()
        }
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            state = 0
            print(todayMovies.count)
        }
        else if sender.selectedSegmentIndex == 1 {
            state = 1
            print(weekMovies.count)
        }
        trendingCollectionView.reloadData()
    }

}
