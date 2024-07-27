//
//  OverviewController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

class OverviewController: BaseController{
    
    private let navBar    = OverViewNavBar()
    
    
}

extension OverviewController{
    override func setupViews() {
        super.setupViews()
        view.addSubview(navBar)
    }
    
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        navigationController?.navigationBar.isHidden                = true
        navBar.translatesAutoresizingMaskIntoConstraints            = false
    }
    
    
    
}


@objc extension OverviewController{
    
}
