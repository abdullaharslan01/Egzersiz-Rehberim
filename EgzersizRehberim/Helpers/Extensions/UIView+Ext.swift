//
//  UIView+Ext.swift
//  EgzersizRehberim
//
//  Created by abdullah on 25.07.2024.
//

import UIKit

extension UIView {
    
    func addSubViews(_ views:UIView...) {
        
        for currentView in views{
            currentView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(currentView)
        }
        
    }
    
    
    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor  = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame            = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        addSubview(separator)
    }
    
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [.touchDown,.touchDragInside])
    
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchCancel
            ])
    }
    
    @objc
    func handleIn(){
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    
    @objc
    func handleOut(){
        UIView.animate(withDuration: 0.15) {
                    self.alpha = 1
                }
    }
}
