//
//  LoginViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 09/05/1443 AH.
//

import UIKit
import FirebaseAuth


class LoginViewController: UIViewController {

  
  @IBOutlet weak var emailTextField: UITextField!
  
  
  @IBOutlet weak var passwerdTextField: UITextField!
  
  
  @IBOutlet weak var loginButton: UIButton!
  
  
  @IBOutlet weak var errorLabel: UILabel!
  
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    setUpElements()
      
    }
  func setUpElements() {
    errorLabel.alpha = 0
    
    // Style the elements
    Utilities.styleTextField(emailTextField)
    Utilities.styleTextField(passwerdTextField)
    Utilities.styleFilledButton(loginButton)
    
    
  }
  
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  @IBAction func loginTapped(_ sender: Any) {
    // TODO: Validate Text Fields
    
    // Create cleaned versions of the text field
    let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    let password = passwerdTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    
    // Signing in the user
    
    Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
  
        if error != nil {
            // Couldn't sign in
            self.errorLabel.text = error!.localizedDescription
            self.errorLabel.alpha = 1
        }
        else {
            
            let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
            
            self.view.window?.rootViewController = homeViewController
            self.view.window?.makeKeyAndVisible()
        }
    }
}

}
