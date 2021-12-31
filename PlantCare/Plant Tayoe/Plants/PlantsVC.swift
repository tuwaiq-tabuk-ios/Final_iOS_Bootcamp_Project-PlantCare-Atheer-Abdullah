//
//  PlantsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 19/05/1443 AH.
//

import UIKit

class PlantsVC: UIViewController {
   
  

  
  
  @IBOutlet weak var plantsTableView: UITableView!

 var plantsArray = [Plants (namePlant: "Rosemary" , imagePlant: UIImage(named:"Rosemary2")),
                   Plants (namePlant: "Mint", imagePlant: UIImage(named: "Mint")),
                     Plants (namePlant:  "Basil" , imagePlant: UIImage(named: "Basil")),
                  Plants (namePlant: "Msche" , imagePlant: UIImage(named: "Msche")),
           Plants (namePlant: "Cilantro (Coriander)", imagePlant: UIImage(named: "cilantro ")),
  Plants (namePlant: "Oregano", imagePlant: UIImage(named: "Oregano"))
 ]

 
  override func viewDidLoad() {
    super.viewDidLoad()
   // plantsTableView.dataSource = self
  
    
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

    return cell



  }

    return cell
}
}

