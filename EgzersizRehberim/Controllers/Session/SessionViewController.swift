//
//  SessionViewController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

class SessionViewController: BaseController{
    
    private let timerView: BaseInfoView = {
        let view = BaseInfoView(with: "Test", alignment: .left)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}


extension SessionViewController {
    override func setupViews() {
        super.setupViews()
        view.addSubViews(timerView)
    }
    
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        
        ])
        
    }
    
    
    
    override func configureAppearance() {
            super.configureAppearance()
           
            title = Resources.Strings.NavBarTitles.session
            navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
            addNavBarButton(at: .left, with: Resources.Strings.Session.pause)
            addNavBarButton(at: .right, with:Resources.Strings.Session.finish)
        }
}
