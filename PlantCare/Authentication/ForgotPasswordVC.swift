//
//  ForgotPasswordVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 01/06/1443 AH.
//

import UIKit
import FirebaseAuth

class ForgotPasswordVC: UIViewController {
  
  //MARK: - IBOutlet
  
  @IBOutlet weak var emilTextField: UITextField!
  @IBOutlet weak var restButton: UIButton!
  
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    Keyboard()
    
  }
  
  
  //MARK: - Action
  
  @IBAction func forgotYourPassword(_ sender: UIButton) {
    
    let auth = Auth.auth()
    auth.sendPasswordReset(withEmail: emilTextField.text!) { (error) in if let error = error {
      
      let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle:UIAlertController.Style.alert)
      let action = UIAlertAction(title: "Ok", style: .cancel) {
        UIAlertAction in
        
        
      }
      alert.addAction(action)
      self.present(alert, animated: true, completion: nil)
      
      return
      
    }
      let alert = UIAlertController(title: "Succesfully", message: "A password reset email has been sent!", preferredStyle: UIAlertController.Style.alert)
      
      let action = UIAlertAction(title: "OK",
                                 style: .cancel) { UIAlertAction in
        self.navigationController?.popViewController(animated: true)
      }
      alert.addAction(action)
      self.present(alert,
                   animated: true,
                   completion: nil)
      
    }
    
  }
  
}
