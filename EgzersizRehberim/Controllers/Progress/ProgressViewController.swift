//
//  ProgressViewController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

class ProgressViewController: BaseController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func configure() {
        title = Resources.Strings.NavBarTitles.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        addNavBarButton(at: .right, with: Resources.Strings.NavBarButtonTitles.export)
        addNavBarButton(at: .left, with: Resources.Strings.NavBarButtonTitles.details)
    }
}