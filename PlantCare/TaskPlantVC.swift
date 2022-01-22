//
//  TaskPlantVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 16/06/1443 AH.
//

import UIKit
import Firebase
//
//
//class TaskPlantVC: UIViewController {
//  
//  
//  var tasks : [PlantTask] = [
//  ]
//  
//  var calendarHeightConstraint: NSLayoutConstraint!
//  let db = Firestore.firestore()
//  var ref: CollectionReference!
// 
//  @IBOutlet weak var tableView: UITableView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//      ref = db.collection("Tasks")
//      
//      ref.getDocuments { snapshot, error in
//        if let error = error {
//          print(error)
//          return
//    }
//        
//        let documents = snapshot?.documents ?? []
//        var allTasks: [PlantTask] = []
//        for document in documents {
//          print(document.documentID, document.data())
//          let data = document.data()
//          let title = data["title"] as? String ?? ""
//          let isComplete = data["isComplete"] as? Bool ?? false
//          var task = PlantTask(title: title, isComplete: )
//          task.uuid = document.documentID
//          allTasks.append(task)
//        }
//        self.tasks = allTasks
//        {
//          self.tableView.reloadData()
//        }
//      }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
//}
