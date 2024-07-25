//
//  SessionViewController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

class SessionViewController: BaseController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configure() {
        title = Resources.Strings.NavBarTitles.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        addNavBarButton(at: .left, with: Resources.Strings.NavBarButtonTitles.pause)
        addNavBarButton(at: .right, with: Resources.Strings.NavBarButtonTitles.finish)
    }
}
