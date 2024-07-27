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
    
    override func configureAppearance() {
        
        super.configureAppearance()
        title = Resources.Strings.NavBarTitles.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.export)
        addNavBarButton(at: .left, with: Resources.Strings.Progress.details)
    }
}
