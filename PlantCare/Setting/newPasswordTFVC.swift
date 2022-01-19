//
//  newPasswordTFVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 02/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore


class newPasswordTFVC: UIViewController {

  @IBOutlet weak var newPasswordTF: MainTF!
  
  @IBOutlet weak var saveBotn: UIButton!
  
  var Password = ""
  
  let db = Firestore.firestore()

  override func viewDidLoad() {
        super.viewDidLoad()
    overrideUserInterfaceStyle = .light
    self.dismissKeyboard()
    
    
    let user =  Auth.auth().currentUser
    print("\(String(describing: user?.uid))")
    if let currentUser = user {
      db.collection("users").document(currentUser.uid).getDocument { doc, err in
        if err != nil{
          print(err!)
          
        }
        else{
          _ = doc!.data()!
        
        
          self.newPasswordTF.text = self.Password
      }
    }
  }
}

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
  
  

    
