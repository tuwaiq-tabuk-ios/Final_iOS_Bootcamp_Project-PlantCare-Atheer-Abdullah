//
//  FlowersVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class FlowersVC: UIViewController, UITableViewDataSource , UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrFlower.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "FWCell") as!
    FlowersTableViewCell
    let date =
    arrFlower[indexPath.row]
    cell.setup5Cell(photo:date.photo, name: date.name)
    
    return cell
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrFlower = [Flower] ()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
      tableView.delegate = self
      arrFlower.append(Flower.init(name: "Asiatic Lilies", photo: UIImage(named: "AsiaticLilies")!))
      
      arrFlower.append(Flower.init(name: "Carnation", photo: UIImage(named: "Carnation")!))
      
      arrFlower.append(Flower.init(name: "Peony", photo: UIImage(named: "Peony")!))
      
      arrFlower.append(Flower.init(name: "petunia", photo: UIImage(named: "petunia")!))
      
      arrFlower.append(Flower.init(name: "Rose", photo: UIImage(named: "rose")!))
      
      arrFlower.append(Flower.init(name: "False Sunflower", photo: UIImage(named: "sunflower")!))
      
      
    }
    


}

struct Flower {
  
  let name : String
  
  let photo : UIImage
  
}

