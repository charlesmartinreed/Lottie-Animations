//
//  UIView+extension.swift
//  Lottie Animations
//
//  Created by Charles Martin Reed on 12/19/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

extension UIView {
    
    //at the present, this extension class only handles full screen views, ignoring the safe areas
    
    func fillSuperview() {
        anchor(top: superview?.topAnchor, trailing: superview?.trailingAnchor, bottom: superview?.bottomAnchor, leading: superview?.leadingAnchor)
        
    }
    
//    func centerInView() {
//        center(toX: superview?.centerXAnchor, andY: superview?.centerYAnchor)
//    }
    
    private func anchor(top: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing).isActive = true
            
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom).isActive = true
            
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading).isActive = true
            
        }
        
    }
    
//    private func center(toX: NSLayoutDimension?, andY: NSLayoutDimension?) {
//        translatesAutoresizingMaskIntoConstraints = false
//
//        if let toX = toX {
//        }
//
//        if let andY = andY {
//            centerYAnchor.constraint(equalTo: andY).isActive = true
//        }
//    }

}
