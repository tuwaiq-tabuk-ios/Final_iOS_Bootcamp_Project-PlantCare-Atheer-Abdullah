//
//  uoserProfileVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 15/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore


class UoserProfileVC: UIViewController {

  
  let db = Firestore.firestore()
  
  @IBOutlet weak var imageView: UIImageView!
  
  @IBOutlet weak var namelabel: UILabel!

  @IBOutlet weak var emailLabel: UILabel!
  
  
  

  override func viewDidLoad() {
        super.viewDidLoad()
//      readUsers()
    }
  
  // MARK: - Methods
  
  
//  func readUsers(){
//    if  let user = Auth.auth().currentUser?.uid{
//      let docRef = db.collection("Users").document(user)
//
//      docRef.getDocument { (document, error) in
//        if let document = document, document.exists {
//          _ = document.data().map(String.init(describing:)) ?? "nil"
//          self.namelabel.text = document.data()?["name"] as? String
//          self.emailLabel.text = document.data()?["email"] as? String
//
//
//
//          _ = Employee(name: self.namelabel.text!,
//                       email: self.emailLabel.text!
//)
//
//          print("Document data")
//        } else {
//          print("Document does not exist\(String(describing: error?.localizedDescription))")
//        }
//      }
//
    }
  
  

