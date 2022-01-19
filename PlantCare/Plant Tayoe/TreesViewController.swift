//
//  TreesViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit
import SwiftUI

class TreesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TCell") as! TreesTableViewCell
    let date = arrTree[indexPath.row]
    cell.setup3Cell(photo: date.imagePlant!, name: date.namePlant)
    cell.btnAddToFavorite.tag = indexPath.row
    cell.btnAddToFavorite.addTarget(self, action: #selector(addToFavorite(sender:)),
                                    for: .touchUpInside)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrTree.count
  }
  
//  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
//    let Plants = arrTree[indexPath.row]
//    print(Plants.imagePlant?.images
//     vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DeetailVC
//
//    if let viewController = vc {
//      viewController.plantCare = plants
//      present(viewController, animated: true, completion: nil)
//    }
//  }
  
  @objc
  func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)

}
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrTree = [Plants] ()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      tableView.dataSource = self
      tableView.delegate = self
   
      arrTree.append(Plants.init(namePlant: "Almond Tree", imagePlant: UIImage(named: "Almond")!))
      
      arrTree.append(Plants.init(namePlant: "Neem Tree", imagePlant:UIImage(named: "Neem")!))
      
      arrTree.append(Plants.init(namePlant: "Date Palm Tree", imagePlant: UIImage(named: "Date")!))
      
      arrTree.append(Plants.init(namePlant: "Cedar  Bonsai", imagePlant: UIImage(named: "CedarBonsai")!))
      
      arrTree.append(Plants.init(namePlant: "Cherry Tree", imagePlant: UIImage(named: "CherryTree")!))
      
      arrTree.append(Plants.init(namePlant: "Clusia Princess", imagePlant :UIImage(named: "ClusaPrincess")!))
    }
  
 

  

}

