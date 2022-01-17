//
//  ViewController.swift
//  WAR
//
//  Created by ihlas on 17.01.2022.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {
  
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }
    fileprivate func setupNavigationBar(){
        self.navigationItem.title = "Weather APP"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        UIView.areAnimationsEnabled = true
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        
    }
    //MARK: - UISeacrh ResultUpdating
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    //MARK: -
}

