//
//  ProfileVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 02/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore

class ProfileVC: UIViewController {
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var emailTF: UITextField!
  @IBOutlet weak var firstNameTF: UITextField!
  @IBOutlet weak var lastNameTF: UITextField!
  @IBOutlet weak var sendBtn: UIButton!
  
  // MARK: - Properties
  
  let db = Firestore.firestore()
  
  var firstname = "firstName"
  var lastname = "lastnNme"
  var Email = ""
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    sendBtn.cmShadow()
    overrideUserInterfaceStyle = .light
    
    
    
    let user =  Auth.auth().currentUser
    print("\n\n\n****** THE CURRENT USER ID:: \(String(describing: user?.uid))")
    
    if let currentUser = user {
      db.collection("users").document(currentUser.uid).getDocument { doc, err in
        if err != nil{
          print("\n\n\n**** AN ERROR OCUURED:: \(String(describing: err))")
        }
        else{
          let data = doc!.data()
          print("\n\n\n****** THE DATA::\(String(describing: data))")
          
          self.Email = (user?.email)!
          self.emailTF.text = self.Email
          
          self.firstname = data?["firstName"] as! String
          self.lastname = data?["lastName"] as! String
          
          self.firstNameTF.text = self.firstname
          self.lastNameTF.text = self.lastname
          
        }
      }
      
    }
    
  }
  // MARK: - IBAction
  
  @IBAction func send(_ sender: Any) {
    
    Auth.auth().currentUser?.updateEmail(to: emailTF.text!) { [self] error in
      if error == nil{
        let ref = db.collection("users").document(Auth.auth().currentUser!.uid)
        ref.updateData(["email": emailTF.text!]) { err in
          if let err = err {
            print("Error updating document: \(err)")
          } else {
            print("Document successfully updated")
          }
        }
        
      }
    }
    
    db.collection("users").document(Auth.auth().currentUser!.uid).updateData([
      "firstName": self.firstname, "lastName": self.lastname ])
    { err in
      if let err = err {
        print("\n\n\n*******Error updating document: \(err)")
      } else {
        print("\n\n\n*******Document successfully updated")
      }
    }
  }
}




