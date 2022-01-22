//
//  Utilities.swift
//  PlantCare
//
//  Created by Atheer abdullah on 07/06/1443 AH.


import Foundation
import UIKit

class Utilities {
  
  static func styleTextField(_ textfield:UITextField) {
    
    
    textfield.layer.cornerRadius = 10
    // Create the bottom line
    let bottomLine = CALayer()
  
    // Add the line to the text field
    textfield.layer.addSublayer(bottomLine)
    
  }
  
  static func styleFilledButton(_ button:UIButton) {
    
    // Filled rounded corner style
  
    button.layer.cornerRadius = 10
  
  }
  
  
  static func styleTextView(_ textView: UITextView) {
    textView.layer.shadowOpacity = 0.5
    textView.layer.cornerRadius = 10
  }
  
  
  static func styleHollowButton(_ button:UIButton) {
    
    // Hollow rounded corner style
    button.layer.borderWidth = 3
    button.layer.cornerRadius = 10
    button.tintColor = UIColor(named: "darkGreen")
  }
  
  static func isPasswordValid(_ password : String) -> Bool {
    
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
    return passwordTest.evaluate(with: password)
  }
  
}
