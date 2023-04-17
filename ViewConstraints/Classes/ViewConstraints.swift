//
//  ViewConstraints.swift
//  Pods-ViewConstraints_Example
//
//  Created by hari-16745 on 17/04/23.
//

import Foundation
import UIKit

extension UIView{
    
    /**
     sets constraints that matches the parent view, padding(common for all sides).
     
     [note: make sure view added to the parent before calling this function]
     */
    public func fillParent(padding: CGFloat = 0){
        
        guard
            let superView = self.superview
        else{
            fatalError("View has no parent to set constraints.")
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                self.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor, constant: padding),
                self.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: padding),
                self.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
                self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: -padding)
            ]
        )
        
    }
    
    
    /**
     sets constraints that matches the parent view. horizontal padding for leading and trailing anchors, and vertical padding for top and bottom anchors
     
     [note: make sure view added to the parent before calling this function]
     */
    public func fillParent(horizontalPadding horizontal: CGFloat = 0, verticalPadding vertical: CGFloat = 0){
        
        guard
            let superView = self.superview
        else{
            fatalError("View has no parent to set constraints.")
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                self.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor, constant: vertical),
                self.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: horizontal),
                self.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -horizontal),
                self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: -vertical)
            ]
        )
        
    }
    
    
    /**
     sets constraints that matches the parent view. top padding for top anchor lead padding for leading anchor, trail padding for trailing anchors, and bottom padding for bottom anchor
     
     [note: make sure view added to the parent before calling this function]
     */
    public func fillParent(topPAdding top: CGFloat = 0, leadPadding lead: CGFloat = 0, trailPadding trail: CGFloat = 0, bottomPadding bottom: CGFloat = 0){
        
        guard
            let superView = self.superview
        else{
            fatalError("View has no parent to set constraints.")
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                self.topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor, constant: top),
                self.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor, constant: lead),
                self.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor, constant: -trail),
                self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: -bottom)
            ]
        )
        
    }
}

