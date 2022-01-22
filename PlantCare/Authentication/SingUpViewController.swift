//
//  SingUpViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 09/05/1443 AH.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SingUpViewController: UIViewController{
  
  
  // MARK : - IBOutlet
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: CMTextFild!
  @IBOutlet weak var confirmPassword: CMTextFild!
  @IBOutlet weak var signUpButton: UIButton!
  @IBOutlet weak var errorLabel: UILabel!
  
  // MARK: - View controller Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
 
    setUpElements()
    overrideUserInterfaceStyle = .light
    errorLabel.isHidden = true
    signUpButton.cmShadow()
    
  }
  
  // MARK: - Register
  func setUpElements() {
    
    //style the elements
    Utilities.styleTextField(firstNameTextField)
    Utilities.styleTextField(lastNameTextField)
    Utilities.styleTextField(emailTextField)
    Utilities.styleTextField(passwordTextField)
    Utilities.styleFilledButton(signUpButton)
    Utilities.styleTextField(confirmPassword)
  }
 


//
//  func validateFields() -> String? {
//
//    // Check that all fields are filled in
//    if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
//        lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
//        emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
//        passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
//
//      return "Please fill in all fields."
//    }
////
//    // Check if the password is secure
//    let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//
//    if Utilities.isPasswordValid(cleanedPassword) == false {
//      // Password isn't secure enough
//      return "Please make sure your password is at least 8 characters, contains a special character and a number."
//    }
//
//    return nil
//  }
  
  
  
  // MARK: - IBAction
  
  @IBAction func singUpTapped(_ sender: Any) {
    singUp()
  }
  
  // MARK: - Methods
  
  private func singUp()  {
    
    guard let email = emailTextField.text,
          email.isEmpty == false else {
            errorLabel.isHidden = false
            errorLabel.text = "Fill in the email"
    return
          }
    guard let password = passwordTextField.text,
    password.isEmpty == false else {
      errorLabel.isHidden = false
      errorLabel.text = "Enter the password"
      return
    }
    
    guard let firstName = firstNameTextField.text,
          firstName.isEmpty == false else {
            errorLabel.isHidden = false
            errorLabel.text = "Fill in the first name"
            return
    }
    guard let lastName = lastNameTextField.text,
          lastName.isEmpty == false else {
            errorLabel.isHidden = false
            errorLabel.text = "Fill in the last name"
            return
    }
    FSUserManager
      .shared
      .signUpUserWith(email: email,
                      password: password ,
                      firstName: firstName,
                      lastName:lastName) { error in
        if error == nil {
        // Navigation
        let storybord = UIStoryboard(name: "Main", bundle: nil)
          let vc = storybord
            
            .instantiateViewController(withIdentifier: K.Storyboard.homeViewController) 
            
           // vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true) } else {
                self.errorLabel.isHidden = false
                self.errorLabel.text = error?.localizedDescription
              }
        }
    
  }
       
}

