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
        configure()
        setConstraints()
        navDesign()
    }
    

    func configure() { }
    func setConstraints() { }
    func navDesign() {
        //self.navigationController?.navigationBar.tintColor = .white
    }

}
