//
//  ViewController.swift
//  Lottie Animations
//
//  Created by Charles Martin Reed on 12/19/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit
import Lottie

//CHECK THIS OUT: Having trouble getting Lottie to recognize the bundle path here
struct Animations {
    static let nightMode = Bundle.main.path(forResource: "night_mode", ofType: "json")!
    static let fluidLoading = Bundle.main.path(forResource: "fluid_loading_animation", ofType: "json")!
}

class ViewController: UIViewController {

    //MARK:- Instance properties
    let centeredAnimationView = LOTAnimationView()
    let fullAnimationView = LOTAnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK:- Constraints helper method
//        func addConstraintFromView(subview: UIView?, attribute: NSLayoutConstraint.Attribute, multiplier: CGFloat) {
//
//            //adds a constraint to the superview, using the view property of the view controller
//            if let subview = subview {
//                let constraint = NSLayoutConstraint(item: subview, attribute: attribute, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: multiplier, constant: 0)
//                //constraint.identifier = identifier
//                view.addConstraint(constraint)
//            }
//        }
        
        
        //MARK:- Adding Lottie Views and constraints
        view.addSubview(centeredAnimationView)
        centeredAnimationView.translatesAutoresizingMaskIntoConstraints = false
//        centeredAnimationView.backgroundColor = UIColor(red: 255/255, green: 191/255, blue: 0/255, alpha: 1)
        centeredAnimationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        centeredAnimationView.center = view.center
        
        
//        addConstraintFromView(subview: centeredAnimationView, attribute: .centerY, multiplier: 1)
//        addConstraintFromView(subview: centeredAnimationView, attribute: .centerX, multiplier: 1)
        
        
        //centeredAnimationView.centerInView()
        
        //MARK:- animation view autolayout
//        view.addSubview(fullAnimationView)
//        fullAnimationView.contentMode = .scaleAspectFit
//        fullAnimationView.fillSuperview()
//
        startAnimation()
    }
    
    func startAnimation() {
        centeredAnimationView.contentMode = .scaleAspectFit
        centeredAnimationView.setAnimation(named: "night_mode")
        centeredAnimationView.loopAnimation = true
        centeredAnimationView.autoReverseAnimation = true
        centeredAnimationView.play()
    }
    
    


}

