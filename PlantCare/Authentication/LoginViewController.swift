//
//  LoginViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 09/05/1443 AH.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
  
  //MARK: - IBOutlet
  
  @IBOutlet weak var emailTF: CMTextFild!
  @IBOutlet weak var passwerdTF: CMTextFild!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var errorLabel: UILabel!
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
   
    setUpElements()
  
    emailTF.text = "tools-554@hotmail.com"
    passwerdTF.text = "AtheR212a"
    navigationItem.backButtonTitle = ""
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
    
    loginButton.cmShadow()
  }
  
  // MARK: - Methods
  
  func setUpElements() {
    
    errorLabel.alpha = 0
    
    // Style the elements
    Utilities.styleTextField(emailTF)
    Utilities.styleTextField(passwerdTF)
    Utilities.styleFilledButton(loginButton)
    
  }
 
  //MARK: - IBAction
  
  @IBAction func loginTapped(_ sender: Any) {
    // TODO: Validate Text Fields
    
    // Create cleaned versions of the text field
    let email = emailTF.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    let password = passwerdTF.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    
      // Signing in the user
      
      Auth.auth().signIn(withEmail: email, password: password) { (result, error) in

          if error != nil {
            // Couldn't sign in
            self.errorLabel.text = error!.localizedDescription
            self.errorLabel.alpha = 1
          }
          else {
            
            let homeViewController = self.storyboard?.instantiateViewController(identifier:K.Storyboard.homeViewController) as? TabBarVC
            
            self.view.window?.rootViewController = homeViewController
            self.view.window?.makeKeyAndVisible()
          }
        }
      }
    }
  
  
