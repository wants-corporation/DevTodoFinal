//
//  AddProjectViewController.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit

class AddProjectViewController: BaseViewController {

    let mainView = AddProjectView()
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.backgroundColor = Assets.Color.grey.color
    }
    
    override func navDesign() {
        let backButton = UIBarButtonItem(image: Assets.Icon.arrow.image, style: .plain, target: self, action: #selector(backButtonTapped))
        let submitButton = UIBarButtonItem(title: "Submit", style: .done, target: self, action: #selector(submitButtonTapped))
        submitButton.tintColor = Assets.Color.green.color
        self.navigationItem.leftBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = submitButton
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = false
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithDefaultBackground()
        navigationItem.scrollEdgeAppearance = navigationBarAppearance
        navigationItem.standardAppearance = navigationBarAppearance
        navigationItem.compactAppearance = navigationBarAppearance
    }
   
    @objc func backButtonTapped() {
        
    }
    
    @objc func submitButtonTapped() {
        
    }

}
