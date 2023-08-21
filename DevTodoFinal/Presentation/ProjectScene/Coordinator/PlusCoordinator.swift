//
//  PlusCoordinator.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit

class PlusCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.showAddProject()
    }
    
    private func showAddProject() {
        let nav = UINavigationController(rootViewController: ProjectViewController())
        nav.pushViewController(AddProjectViewController(), animated: true)
    }
    
    
    
    
}
