//
//  Keyboard+Ext.swift
//  PlantCare
//
//  Created by Atheer abdullah on 17/06/1443 AH.
//


import UIKit

extension UIViewController {
  
  //MARK: - Functions
  
func dismissKeyboard() {
       let tap: UITapGestureRecognizer = UITapGestureRecognizer( target:     self, action:    #selector(UIViewController.dismissKeyboardTouchOutside))
       tap.cancelsTouchesInView = false
       view.addGestureRecognizer(tap)
    }
    
  
    @objc private func dismissKeyboardTouchOutside() {
       view.endEditing(true)
    }
}
