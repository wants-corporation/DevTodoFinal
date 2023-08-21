//
//  TabbarController.swift
//  DevTodoFinal
//
//  Created by 나리강 on 2023/08/21.
//

import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        self.view.backgroundColor = .white
    }
    
    func configure() {
        let firstTap = ProjectViewController()
        let nav1 = UINavigationController(rootViewController: firstTap)
        let secondTap = DiaryViewController()
        let nav2 = UINavigationController(rootViewController: secondTap)
        let thirdTap = DailyViewController()
        let nav3 = UINavigationController(rootViewController: thirdTap)
      
        
        let firstBarItem = UITabBarItem(title: "Projects", image: UIImage(asset: Assets.Icon.projects), selectedImage: UIImage(asset: Assets.Icon.projects))
        let secondBarItem = UITabBarItem(title: "Monthly", image: UIImage(asset: Assets.Icon.calendar), selectedImage: UIImage(asset: Assets.Icon.calendar))
        let thirdBarItem = UITabBarItem(title: "Daily", image: UIImage(asset: Assets.Icon.menuboard), selectedImage: UIImage(asset: Assets.Icon.menuboard))
       
    
        nav1.tabBarItem = firstBarItem
        nav2.tabBarItem = secondBarItem
        nav3.tabBarItem = thirdBarItem
        
        setViewControllers([nav1,nav2,nav3], animated: true)
        
    }
    
    
    
}
