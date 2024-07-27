//
//  BaseController.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

enum NavBarPosition{
    case left
    case right
}

class BaseController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constraintsViews()
        configureAppearance()
    }
    
  
}


@objc extension BaseController{
    func setupViews(){}
    func constraintsViews(){}
    
    func configureAppearance() {
        view.backgroundColor = Resources.Colors.background
    }
    
    @objc
    func navBarLeftButtonHandler(){ }
    
    @objc
    func navBarRightButtonHandler() { }
    
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosition, with title: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
