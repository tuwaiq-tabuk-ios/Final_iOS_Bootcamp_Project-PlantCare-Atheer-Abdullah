//
//  ViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 09/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var singUpButton: UIButton!
  
  
  @IBOutlet weak var loginButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   // Do any additional setup after loading the view.
    
    setUpElements()
  }
  func setUpElements() {
    
    Utilities.styleFilledButton(singUpButton)
    Utilities.styleFilledButton(loginButton)
  }

}

