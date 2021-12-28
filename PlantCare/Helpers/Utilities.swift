//
//  Utilities.swift
//  customauth
//
//  Created by Christopher Ching on 2019-05-09.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
  
  static func styleTextField(_ textfield:UITextField) {
    
    // Create the bottom line
    let bottomLine = CALayer()
    
    bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
    //
    bottomLine.backgroundColor = UIColor(named: "darkGreen")?.cgColor
    //
    //        // Remove border on text field
    textfield.borderStyle = .none
    
    // Add the line to the text field
    textfield.layer.addSublayer(bottomLine)
    
  }
  
  static func styleFilledButton(_ button:UIButton) {
    
    // Filled rounded corner style
    button.backgroundColor = UIColor(named: "gray")
    button.layer.cornerRadius = 40
    button.tintColor = UIColor(named: "green")
  }
  
  static func styleHollowButton(_ button:UIButton) {
    
    // Hollow rounded corner style
    button.layer.borderWidth = 3
    button.layer.borderColor = UIColor(named: "darkGreen")?.cgColor
    button.layer.cornerRadius = 40
    button.tintColor = UIColor(named: "darkGreen")
  }
  
  static func isPasswordValid(_ password : String) -> Bool {
    
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
    return passwordTest.evaluate(with: password)
  }
  
}
