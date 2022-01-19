//
//  Keyboard.swift
//  PlantCare
//
//  Created by Atheer abdullah on 15/06/1443 AH.
//

import Foundation

import UIKit

extension UIViewController {
func Keyboard() {
       let tap: UITapGestureRecognizer = UITapGestureRecognizer( target:     self, action:    #selector(UIViewController.dismissKeyboardTouchOutside))
       tap.cancelsTouchesInView = false
       view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboardTouchOutside() {
       view.endEditing(true)
    }
}

