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

        
    }
    
    override func navDesign() {
        let backButton = UIBarButtonItem(image: Assets.Icon.arrow.image, style: .plain, target: self, action: #selector(backButtonTapped))
        let submitButton = UIBarButtonItem(title: "Submit", style: .done, target: self, action: #selector(submitButtonTapped))
        submitButton.tintColor = Assets.Color.green.color
        self.navigationItem.leftBarButtonItem = backButton
        self.navigationItem.rightBarButtonItem = submitButton
        self.navigationController?.navigationBar.tintColor = .white
    }
   
    @objc func backButtonTapped() {
        
    }
    
    @objc func submitButtonTapped() {
        
    }

}
