//
//  ProfileVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 02/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore
import CoreMIDI

class ProfileVC: UIViewController {


  
  @IBOutlet weak var email: MainTF!
  
  @IBOutlet weak var firstName: MainTF!
  
  @IBOutlet weak var lastName: MainTF!
  
  @IBOutlet weak var sendBtn: UIButton!
  
  
  let db = Firestore.firestore()
  
  var firstname = "nil"
  var lastname = "nil"
  var Email = "nil"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    overrideUserInterfaceStyle = .light
    
    let user =  Auth.auth().currentUser
    print("\n\n\n****** THE CURRENT USER ID:: \(String(describing: user?.uid))")
    if let currentUser = user {
      db.collection("users").document(currentUser.uid).getDocument { doc, err in
        
        if err != nil{
          print("\n\n\n**** AN ERROR OCUURED:: \(String(describing: err))")
        }
        else{
          let data = doc!.data()!
          
          print("\n\n\n****** THE DATA::\(data)")
          

          self.Email = (user?.email)!
          self.email.text = self.Email
         
          self.firstname = data["firstname"] as! String
          self.firstName.text = self.firstname
          
          self.lastname = data["lastname"] as! String
          self.lastName.text = self.lastname
        }
      }
      
    }
    
  }
   
  @IBAction func send(_ sender: Any) {
    
    Auth.auth().currentUser?.updateEmail(to: email.text!) { [self] error in
      if error == nil{
        let ref = db.collection("users").document(Auth.auth().currentUser!.uid)
        ref.updateData(["email": email.text!]) { err in
          if let err = err {
            print("Error updating document: \(err)")
          } else {
            print("Document successfully updated")
          }
        }
        
      }
    }
   
   
    db.collection("users").document(Auth.auth().currentUser!.uid).updateData([
      "firstname": self.firstname, "lastname": self.lastname ])
    { err in
        if let err = err {
          print("\n\n\n*******Error updating document: \(err)")
        } else {
          print("\n\n\n*******Document successfully updated")
        }
      }
  }
}

  
  

