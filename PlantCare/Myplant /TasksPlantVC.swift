//
//  TasksPlantVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 16/06/1443 AH.
//

import UIKit
import Firebase

class TasksPlantVC: UIViewController {
//TodoDetailsVC
  
  var task: PlantTask!
  var index: Int!
  let db = Firestore.firestore()
  
  
  @IBOutlet weak var plantImageView: UIImageView!
  @IBOutlet weak var detailsLabel: UILabel!
  @IBOutlet weak var plantTitleLabel: UILabel!
  
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      if task.image != nil {
        plantImageView.image = task.image
    }else {
        plantImageView.image = UIImage(named: "image1")
    }
        
      setupUI()
      
      NotificationCenter.default.addObserver(self, selector: #selector(currentPlantEdited), name: NSNotification.Name(rawValue: "CurrentPlantEdited"), object: nil)
      
  }
        
  @objc func currentPlantEdited(notification: Notification)
  {
      if let task = notification.userInfo?["editedTodo"] as? PlantTask
      {
          self.task = task
          setupUI()
          
      }
  }
  
  func setupUI(){
      detailsLabel.text = task.details
      plantTitleLabel.text = task.title
      plantImageView.image = task.image
  }
  
  @IBAction func editTodoButtonClicked(_ sender: Any) {
      if let viewController = storyboard?.instantiateViewController(withIdentifier: "NewPlantVC") as? NewPlantTasksVC {
          
          viewController.isCreation = false
          viewController.editedTask = task
        viewController.editedTaskIndex = index
          
          navigationController?.pushViewController(viewController, animated: true)
          
      }
    
  }
  
  
}

