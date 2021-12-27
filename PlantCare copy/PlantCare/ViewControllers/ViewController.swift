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
//    configureButtons ()
    
    setUpElements()
  }
  func setUpElements() {
    
    Utilities.styleFilledButton(singUpButton)
    Utilities.styleFilledButton(loginButton)
  }
   
  
  @IBAction func userChoice(_ sender: UIButton) {
    sender.backgroundColor = UIColor(named: "green")
    
  }
  
  
//  func configureButtons () {
//
//    singUpButton.layer.cornerRadius = 40
//    singUpButton.layer.borderWidth = 3
//    singUpButton.layer.borderColor = UIColor(named: "green")?.cgColor
//
//    loginButton.layer.cornerRadius = 40
//    loginButton.layer.borderWidth = 3
//    loginButton.layer.borderColor = UIColor(named: "green")?.cgColor
//
//  }
//

}

