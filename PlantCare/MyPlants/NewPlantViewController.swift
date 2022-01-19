//
//  NewPlantViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 03/06/1443 AH.
//
import CoreData
import UIKit

class NewPlantViewController: UIViewController {

  @IBOutlet weak var closeBtn: UIButton!
  
  @IBOutlet weak var plantNameTF: UITextField!
  
  @IBOutlet weak var NicknameTF: UITextField!
  
  @IBOutlet weak var lathinNameTF: UITextField!
  
  @IBOutlet weak var saveBtn: UIButton!
  
  
  
  // MARK: - Properties
  
  var context: NSManagedObjectContext!

  // MARK: - Computed Properties
  
  var plantName: String? {
      if let name = plantNameTF.text, !name.isEmpty {
          return name
      } else {
          return nil
      }
  }
  
  var plantNickname: String? {
      if let nickname = NicknameTF.text, !nickname.isEmpty {
          return nickname
      } else {
          return nil
      }
  }
  
  var plantLatinName: String? {
      if let latinName = lathinNameTF.text, !latinName.isEmpty {
          return latinName
      } else {
          return nil
      }
  }

  // MARK: - Lifecycle
  
  override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      
    plantNameTF.becomeFirstResponder()
  }

  @IBAction func close() {
    
    dismiss(animated: true, completion: nil)
}
  
  
  @IBAction func save() {
    
    guard let plantName = plantName else {
        return
    }
    Plant.create(
        in: context,
        called: plantName,
        withLatin: plantLatinName,
        nickname: plantNickname
    )
    
    do {
        try context.save()
        dismiss(animated: true, completion: nil)
    } catch {
        print("Error adding new plant: \(error)")
    }
}
}

extension NewPlantViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            nicknameTextField.becomeFirstResponder()
        case nicknameTextField:
            latinNameTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        
        return false
    }
}

