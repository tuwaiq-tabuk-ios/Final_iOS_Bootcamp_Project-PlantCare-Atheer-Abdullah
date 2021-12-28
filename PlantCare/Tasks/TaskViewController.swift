//
//  TaskViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 16/05/1443 AH.
//

import UIKit

class TaskViewController: UIViewController {

  @IBOutlet var label: UILabel!
  
  
  var task: String?
  
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      label.text = task
      
      navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
  @objc func deleteTask() {

//    let newCount = count - 1
//
//    UserDefaults().setValue(newCount, forKey: "count")
//    UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
