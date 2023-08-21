//
//  AppCoordinator.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var window: UIWindow?
    var childCoordinators: [Coordinator] = []
    
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        self.window?.rootViewController = TabbarController()
    }
}
