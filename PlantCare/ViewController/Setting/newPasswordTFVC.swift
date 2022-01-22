//
//  newPasswordTFVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 02/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore
import CoreMedia

class newPasswordTFVC: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var newPasswordTF: UITextField!
  @IBOutlet weak var saveBotn: UIButton!
    
  // MARK: - Properties
  
  var Password = ""
  let db = Firestore.firestore()

  // MARK: - Life Cycle
  override func viewDidLoad() {
        super.viewDidLoad()
    overrideUserInterfaceStyle = .light
    self.dismissKeyboard()
    saveBotn.cmShadow()
   
    let user =  Auth.auth().currentUser
    print("\(String(describing: user?.uid))")
    if let currentUser = user {
      db.collection("users").document(currentUser.uid).getDocument { doc, err in
        if err != nil{
          print(err!)
          
        }
        else{
         let data = doc!.data()!
        
        
          self.newPasswordTF.text = self.Password
      }
    }
  }
}
  //MARK: - IBAction
  
  @IBAction func editePassword(_ sender: Any) {
    
    
    Auth.auth().currentUser?.updatePassword(to: newPasswordTF.text!) { [self] error in
      if error == nil{
        let ref = db.collection("users").document(Auth.auth().currentUser!.uid)
        ref.updateData(["password": newPasswordTF.text!]) { err in
          if let err = err {
            print("Error updating document: \(err)")
          } else {
            print("Document successfully updated")
          }
        }
        
      }
    }
  }
  
}
  
  

    
