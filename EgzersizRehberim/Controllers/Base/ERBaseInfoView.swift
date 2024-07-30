//
//  BaseInfoView.swift
//  EgzersizRehberim
//
//  Created by abdullah on 27.07.2024.
//

import UIKit


class ERBaseInfoView: BaseView {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.inactive
        label.text   = "TEST"
        
        return label
    }()
    
    private let button: ERButton = ERButton(with: .primary)
    
    private let contenView: UIView = {
        let view                   = UIView()
        view.backgroundColor       = .white
        view.layer.backgroundColor = Resources.Colors.separator.cgColor
        view.layer.cornerRadius    = 5
        return view
    }()
    
    init(with title: String? = nil, buttonTitle: String? = nil){
        super.init(frame: .zero)
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        button.isHidden = buttonTitle == nil ? true : false
        button.setTitle(buttonTitle)
        
    }
    
    func addButtonTarget(target: Any?, action: Selector, for event: UIControl.Event ) {
        button.addTarget(target, action: action, for: event)
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension ERBaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        addSubViews(titleLabel,contenView, button)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        
        let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
        
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 28),
            
            contenView.topAnchor.constraint(equalTo: contentTopAnchor,constant: contentTopOffset),
            contenView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contenView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contenView.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }
    
    
    override func configureAppearance() {
        super.configureAppearance()
    
        
        
        backgroundColor = .clear
    }
}
