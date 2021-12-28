//
//  PlantsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 19/05/1443 AH.
//

import UIKit

class PlantsVC: UIViewController {
  
  var plantsArray = [Plants (namePlant: "rose" , imagePlant: UIImage(named:"image2")),
                     Plants (namePlant: "tree", imagePlant: UIImage(named: "image1")),
                     Plants (namePlant:  "lemon" , imagePlant: UIImage(named: "image3")),
                     Plants (namePlant: "botes" , imagePlant: UIImage(named: "image4"))
  ]
  
  @IBOutlet weak var plantsTableView: UITableView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    plantsTableView.dataSource = self
    
  }
  
  
  
}


extension PlantsVC : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return plantsArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PlantsCell") as! PlantsCell
    
    cell.plantNameLabel.text = plantsArray[indexPath.row].namePlant
    
    if plantsArray[indexPath.row].imagePlant !=
        nil {
      
      
      
      cell.plantImageView.image = plantsArray[indexPath.row].imagePlant
      
    }else{
      
//      return cell
    
    
    
    
  }
    
    return cell
}

}
