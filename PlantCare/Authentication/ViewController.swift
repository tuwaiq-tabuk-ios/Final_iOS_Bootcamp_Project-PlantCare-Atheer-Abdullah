//
//  ViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 09/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
  // MARK : - IBOutlet
  @IBOutlet weak var singUpButton: UIButton!
  @IBOutlet weak var loginButton: UIButton!
  
  // MARK: - View controller Life Cycle
  
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
   
  // MARK: - IBAction
  
  @IBAction func userChoice(_ sender: UIButton) {
    sender.backgroundColor = UIColor(named: "green")
    
  }
  
}
