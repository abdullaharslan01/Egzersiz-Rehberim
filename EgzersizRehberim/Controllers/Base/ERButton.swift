//
//  ERButton.swift
//  EgzersizRehberim
//
//  Created by abdullah on 26.07.2024.
//

import UIKit

public enum ERButtonType {
    case primary
    case secondary
}

final class ERButton: UIButton{
    
    private let label:  UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    private let iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.image      = Resources.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        return iconView
    }()
    
    var type: ERButtonType = .primary
    
    init(with type:ERButtonType) {
        super.init(frame: .zero)
        self.type  = type
        addViews()
        configure()
        layoutViews()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
    
    
}

private extension ERButton {
    func addViews(){
        addSubViews(label,iconView)

    }
    
    func layoutViews(){
        var horizontalOffset: CGFloat  {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor,constant: horizontalOffset * 2)
        
        ])
    }
        
    func configure() {
        
        switch type {
        case .primary:
            label.textColor    = Resources.Colors.inactive
            iconView.tintColor = Resources.Colors.inactive
            label.font         = Resources.Fonts.helveticaRegular(with: 13)
            
        case .secondary:
            backgroundColor     = Resources.Colors.secondary
            layer.cornerRadius  = 14
            label.textColor     = Resources.Colors.active
            label.font          = Resources.Fonts.helveticaRegular(with: 15)
            iconView.tintColor  = Resources.Colors.active
        }
        
      
        makeSystem(self)

       
    }
}
