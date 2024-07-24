//
//  TabBarController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 24.07.2024.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController{
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle:nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("TabBarController has not been implemented")
    }
    
    private func configure(){
        tabBar.tintColor           = Resources.Colors.active
        tabBar.barTintColor        = Resources.Colors.inactive
        tabBar.backgroundColor     = .white
        tabBar.layer.borderColor   = Resources.Colors.seperator.cgColor
        tabBar.layer.borderWidth   = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController  = UIViewController()
        let progressController = UIViewController()
        let settignsController = UIViewController()
        
        let overViewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionwNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settignsNavigation = UINavigationController(rootViewController: settignsController)
        
        
        overViewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overView, image: Resources.Images.TabBar.overView, tag: Tabs.overview.rawValue)
        
        sessionwNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session, image: Resources.Images.TabBar.session, tag: Tabs.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress, image: Resources.Images.TabBar.progress, tag: Tabs.progress.rawValue)
        
        settignsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settigns, image: Resources.Images.TabBar.settigns, tag: Tabs.settings.rawValue)
        
        setViewControllers([overViewNavigation, sessionwNavigation,progressNavigation,settignsNavigation], animated: false)
        
    }
}
