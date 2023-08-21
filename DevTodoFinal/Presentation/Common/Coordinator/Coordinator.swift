//
//  Coordinator.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit

protocol Coordinator : AnyObject {
    
    var childCoordinators: [Coordinator] { get set }
    
    var navigationController: UINavigationController { get set }
    
    init(_ navigationController: UINavigationController)
    
    func start()
    
}
