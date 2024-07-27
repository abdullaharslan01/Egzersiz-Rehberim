//
//  BaseView.swift
//  EgzersizRehberim
//
//  Created by abdullah on 26.07.2024.
//

import UIKit

class BaseView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

@objc extension BaseView{
    func setupViews(){ }
    func constraintViews() { }
    func configureAppearance() { }
}
