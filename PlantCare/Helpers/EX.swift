//
//  EX.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//


import UIKit



extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
      get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
