//
//  UIBK.swift
//  PlantCare
//
//  Created by Atheer abdullah on 07/06/1443 AH.
//

import Foundation
import UIKit


extension UIButton {
  
  func cmShadow(backgroundColor: CGColor = UIColor(red: 165/255,
                                                    green: 187/255,
                                                    blue: 183/255,
                                                    alpha: 1).cgColor,
                 cornerRadius: CGFloat = 25,
                 borderWidth: CGFloat = 1,
                 borderColor: CGColor = UIColor(red: 165/255,
                                                green: 187/255,
                                                blue: 183/255,
                                                alpha: 100).cgColor,
                 shadowColor: CGColor = UIColor.black.cgColor,
                 shadowOffset: CGSize = CGSize(width: 0.0, height: 6.0),
                 shadowRadius: CGFloat = 8,
                 shadowOpacity: Float = 0.5,
                 masksToBounds: Bool = false) {
    self.layer.backgroundColor = backgroundColor
    self.layer.cornerRadius = cornerRadius
    self.layer.borderWidth = 1
    self.layer.borderColor = borderColor
    
    self.layer.shadowColor = shadowColor
    self.layer.shadowOffset = shadowOffset
    self.layer.shadowRadius = shadowRadius
    self.layer.shadowOpacity = shadowOpacity
    self.layer.masksToBounds = masksToBounds
  }
  
}

extension UIViewController {
func dismissKeyboard() {
       let tap: UITapGestureRecognizer = UITapGestureRecognizer( target:     self, action:    #selector(UIViewController.dismissKeyboardTouchOutside))
       tap.cancelsTouchesInView = false
       view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboardTouchOutside() {
       view.endEditing(true)
    }
}
