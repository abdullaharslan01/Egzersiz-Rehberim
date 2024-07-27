//
//  BaseInfoView.swift
//  EgzersizRehberim
//
//  Created by abdullah on 27.07.2024.
//

import UIKit


class BaseInfoView: BaseView {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helveticaRegular(with: 13)
        label.textColor = Resources.Colors.inactive
        label.text   = "TEST"
        
        return label
    }()
    
    private let contenView: UIView = {
        let view                   = UIView()
        view.backgroundColor       = .white
        view.layer.backgroundColor = Resources.Colors.separator.cgColor
        view.layer.cornerRadius    = 5
        return view
    }()
    
    init(with title: String? = nil, alignment: NSTextAlignment = .left){
        super.init(frame: .zero)
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = alignment
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        addSubViews(titleLabel,contenView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        
        let contentTopOffset: CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
        
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
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
