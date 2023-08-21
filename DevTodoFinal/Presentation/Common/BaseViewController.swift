//
//  BasicViewController.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/14.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = true
        configure()
        setConstraints()
        navDesign()
    }
    

    func configure() { }
    func setConstraints() { }
    func navDesign() {}

}
