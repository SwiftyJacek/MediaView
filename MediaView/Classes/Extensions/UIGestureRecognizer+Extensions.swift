//
//  UIGestureRecognizer+Extensions.swift
//  MediaView
//
//  Created by Andrew Boryk on 8/24/17.
//

import Foundation

extension UITapGestureRecognizer {
    
    convenience init(target: Any?, action: Selector?, taps: Int = 1, delegate: UIGestureRecognizerDelegate? = nil) {
        self.init(target: target, action: action)
        self.numberOfTapsRequired = taps
        self.delegate = delegate
    }
}

extension UIPanGestureRecognizer {
    
    convenience init(target: Any?, action: Selector?, delegate: UIGestureRecognizerDelegate? = nil) {
        self.init(target: target, action: action)
        self.delegate = delegate
        self.delaysTouchesBegan = true
        self.cancelsTouchesInView = true
        self.maximumNumberOfTouches = 1
        self.isEnabled = false
    }
}