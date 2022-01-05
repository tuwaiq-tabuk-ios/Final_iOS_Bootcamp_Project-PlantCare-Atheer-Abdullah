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
    cell.setup3Cell(photo: date.photo, name: date.name)
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrTree.count
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrTree = [Trees] ()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      tableView.dataSource = self
      tableView.delegate = self
   
      arrTree.append(Trees.init(name: "Almond Tree", photo: UIImage(named: "Almond")!))
      
      arrTree.append(Trees.init(name: "Neem Tree", photo: UIImage(named: "Neem")!))
      
      arrTree.append(Trees.init(name: "Date Palm Tree", photo: UIImage(named: "Date")!))
      
      arrTree.append(Trees.init(name: "Cedar  Bonsai", photo: UIImage(named: "CedarBonsai")!))
      
      arrTree.append(Trees.init(name: "Cherry Tree", photo: UIImage(named: "CherryTree")!))
      
      arrTree.append(Trees.init(name: "Clusia Princess", photo:UIImage(named: "ClusaPrincess")!))
    }
    

  
}



struct Trees {
  let name : String
  
  let photo : UIImage
}
