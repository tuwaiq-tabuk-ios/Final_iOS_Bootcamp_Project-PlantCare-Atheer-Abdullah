//
//  NewPlantTasksVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 16/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseAuth

class NewPlantTasksVC: UIViewController {
//NewTodoVC
  
  var isCreation = true
  var editedTask: PlantTask?
  var editedTaskIndex: Int?
  
  @IBOutlet weak var noteTF: UITextView!
  @IBOutlet weak var NamePlantTF: UITextField!
  @IBOutlet weak var imagePlantV: UIImageView!
  @IBOutlet weak var mainButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      if !isCreation{
          mainButton.setTitle("edited", for: .normal)
          navigationItem.title = "editedPlant"
          
          if let task = editedTask {
            NamePlantTF.text = task.title
             noteTF.text = task.details
            imagePlantV.image = task.image
          }
      }
      
    }
    
  @IBAction func changeButtonClicked(_ sender: Any) {
  
      let imagePicker = UIImagePickerController()
      imagePicker.delegate = self
      imagePicker.allowsEditing = true
      present(imagePicker, animated: true, completion: nil)
      
  }
  

  @IBAction func addButtonClicked(_ sender: UIButton) {
    
    
    
    let db = Firestore.firestore()
    let id = UUID().uuidString
    db.collection("Plant").document(id).setData([
      "NamePlant": NamePlantTF.text!.trimmingCharacters(in: .whitespacesAndNewlines),
      "Note": noteTF.text!.trimmingCharacters(in: .whitespacesAndNewlines)
    ]) { err in
      if let err = err {
        print("Error writing document: \(err)")
      } else {
        print("Document successfully written!")
      }
    }
    

  }
  func add () {
    if isCreation {
    var plant = PlantTask(title: noteTF.text!, image: nil, details: noteTF.text!)
    NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NewPalntAdd"), object: nil, userInfo:["addedTask": plant])
    
    let alert = UIAlertController(title: "added", message: "Added successfully", preferredStyle: UIAlertController.Style.alert)
    let closeAction = UIAlertAction(title: "Done", style: UIAlertAction.Style.cancel) { _ in
      self.tabBarController?.selectedIndex
      = 0
      self.NamePlantTF.text = ""
      self.noteTF.text = ""
      
    }
    alert.addAction(closeAction)
    present(alert, animated: true, completion: {
      
    })
      
  } else{

    // else, if the the view controller is opened for edit (not for create)
//    let plant = PlantTask(title: NamePlantTF.text!, image: imagePlantV.image, details: noteTF.text)
//    NotificationCenter.default.post(name: NSNotification.Name(rawValue: "CurrentTodoEdited"), object: nil, userInfo: ["edited": plant,"editedTodoIndex": editedTaskIndex ??])
    
    let alert = UIAlertController(title: "added", message: "Added successfully", preferredStyle: UIAlertController.Style.alert)
    
    let closeAction = UIAlertAction(title: "Done", style: UIAlertAction.Style.cancel) { _ in
      self.navigationController?.popViewController(animated: true)
      self.NamePlantTF.text = ""
      self.noteTF.text = ""
    }
    alert.addAction(closeAction)
    present(alert, animated: true, completion: {
      
    })
    
    
  
}
}
  
//  func transitionToHome() {
//    let homeViewController = storyboard?.instantiateViewController(withIdentifier: "myPlantlist") as? MyPlantViewController
//
//    self.view.window?.rootViewController = homeViewController
//
//    self.view.window?.makeKeyAndVisible()
//
//
//
//  }
//
}
extension NewPlantTasksVC: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
        dismiss(animated: true, completion: nil)
        imagePlantV.image = image
    }
}
