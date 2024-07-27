//
//  OverViewNavBar.swift
//  EgzersizRehberim
//
//  Created by abdullah on 26.07.2024.
//

import UIKit

final class OverViewNavBar: BaseView{
    
    private let allWorkoutsButton = SecondaryButton()
    private let addButton         = UIButton()
    private let titleLabel        = UILabel()
    
    private let weekView: UIView = WeekView()
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.seperator, height: 1)
    }
    
    
    func addAllWorkoutsAction(_ action: Selector, with target:Any?){
        allWorkoutsButton.addTarget(self, action: action, for: .touchUpInside)
    }
    
    
    func addAdditingAction(_ action: Selector, with target:Any?){
        addButton.addTarget(self, action:action, for: .touchUpInside)
    }
    
}

extension OverViewNavBar{
    override func addViews() {
        super.addViews()
        addSubViews(allWorkoutsButton,addButton,titleLabel,weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
        
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
        
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor,constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        
        ])
        
        
    }
    
    override func configureView() {
        super.configureView()
        
        backgroundColor = .white
        
        titleLabel.text      = Resources.Strings.NavBarTitles.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font      = Resources.Fonts.helvelticaRegular(with: 22)
    
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkoutsButton)
        
        addButton.setImage(Resources.Images.Common.add, for: .normal)
        
    }
}

