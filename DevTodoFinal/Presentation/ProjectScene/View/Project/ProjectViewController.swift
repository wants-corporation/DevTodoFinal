//
//  ProjectViewController.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/14.
//

import UIKit

class ProjectViewController: BaseViewController {

    var mainView = ProjectView()
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func navDesign() {
        self.navigationItem.title = "Projects"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search project"
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        let plusButton = UIBarButtonItem(image: UIImage(named: "addsquare"), style: .plain, target: self, action: #selector(plusButtonTapped))
        self.navigationItem.setRightBarButton(plusButton, animated: true)
        self.navigationItem.rightBarButtonItem?.tintColor = Assets.Color.green.color
        self.navigationItem.searchController = searchController
    }

   
    @objc func plusButtonTapped() {
        self.navigationController?.pushViewController(AddProjectViewController(), animated: true)
    }

}

extension ProjectViewController : UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
 
}
