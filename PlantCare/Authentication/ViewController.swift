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
  
    singUpButton.cmShadow()
    loginButton.cmShadow()
    
    setUpElements()
  
  }
  func setUpElements() {
    
    Utilities.styleFilledButton(singUpButton)
    Utilities.styleFilledButton(loginButton)
  }
   
  
  @IBAction func userChoice(_ sender: UIButton) {
    sender.backgroundColor = UIColor(named: "green")
    
  }
  

}
