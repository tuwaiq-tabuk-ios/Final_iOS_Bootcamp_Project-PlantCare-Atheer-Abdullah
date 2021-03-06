//
//  SettingVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 02/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseFirestore

class SettingVC: UIViewController {

  //MARK: - IBOutlet
  
  @IBOutlet weak var updatePassBtn: UIButton!
  @IBOutlet weak var profile: UIButton!
  @IBOutlet weak var singOut: UIButton!
  
  var user: Users?
  let db = Firestore.firestore()

  
  // MARK: - Life Cycle
  override func viewDidLoad() {
        super.viewDidLoad()
  
    
    overrideUserInterfaceStyle = .light

    navigationItem.backButtonTitle = ""
    navigationItem.setHidesBackButton(true, animated: true)
  
    
    updatePassBtn.cmShadow()
    profile.cmShadow()
    singOut.cmShadow()
    
    }
  
  //MARK: - IBAction
  @IBAction func editeProfile(_ sender: Any) {
    
  let storyBoard : UIStoryboard = UIStoryboard(name: "Main",
                                               bundle:nil)
  let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EditeProfile") as! ProfileVC
  self.present(nextViewController, animated:true, completion:nil)
}


  @IBAction func editePassword(_ sender: Any) {
    
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    let nextViewController2 = storyBoard.instantiateViewController(withIdentifier: "EditePassword") as! NewPasswordTFVC
    
    self.present(nextViewController2, animated:true, completion:nil)
  }
  
  @IBAction func signOut(_ sender: UIBarButtonItem) {
    
    do{
    try Auth.auth().signOut()
     
    
   if let vc = UIStoryboard(name: "Main", bundle: nil)
        .instantiateViewController(withIdentifier: "WelcomeVC") as? UINavigationController {
          vc.modalPresentationStyle = .fullScreen
          self.present(vc, animated: true, completion: nil)
        }
      } catch {
        print("ERROR")
      }

     
  }
  

}









