//
//  MyPlantViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit
import Firebase

class MyPlantViewController: UIViewController {

  
  var tasksArray : [PlantTask] = [
  ]
  
  var tasksPlant : TasksPlantVC!
  
  let db = Firestore.firestore()
  var ref: CollectionReference!

  //  MARK: - @IBOutlet
  
  @IBOutlet weak var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
   
  
      tableView.dataSource = self
      tableView.delegate = self
      
      db.collection("Plant").getDocuments() {
        
        (QuerySnapshot, error) in
        if let error = error {
          print(error.localizedDescription)
        } else {
          
          if let QuerySnapshot = QuerySnapshot {
            for document in QuerySnapshot.documents {
              let data = document.data()
              let NamePlant = data["NamePlant"] as? String ?? ""
              let note = data["Note"] as? String ?? ""
              
              
             
            self.tableView.reloadData()
              
            
            }
            
          }
        }
        }
     
  }
    
  // MARK: - Methods
  
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowDetail" {
      let destanation = segue.destination as! NewPlantViewController
      let selectedIndexPath = tableView.indexPathForSelectedRow!
//      destanation.spot = spots.spotArray[selectedIndexPath.row]
      
    }
  }
}

 
// MARK: - Table view data source
extension MyPlantViewController: UITableViewDelegate , UITableViewDataSource {
  //Number Of Rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return tasksArray.count
  }

  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myPlantCell", for: indexPath) as! MyPlantListTVCell
    
    cell.nameYourPlant.text = tasksArray[indexPath.row].title
    if tasksArray[indexPath.row].image != nil {
      cell.imageYourPlant.image = UIImage(named: "image1")
      
    }
    cell.imageYourPlant.layer.cornerRadius =
    cell.imageYourPlant.frame.width / 2
    
    return cell
      
    }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
    
    let task = tasksArray[indexPath.row]
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsTask") as? TasksPlantVC
    
    
    if let viewController = vc {
        viewController.task = task
        viewController.index = indexPath.row
        
        navigationController?.pushViewController(viewController, animated: true)

}
}
}
