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
    cell.setup5Cell(photo:date.imagePlant!, name: date.namePlant)
    cell.likeButton.tag = indexPath.row
    cell.likeButton.addTarget(self, action: #selector(addToFavorite(sender:)),
                                    for: .touchUpInside)
    
    return cell
  }
  
  @objc
  func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
  }
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrFlower = [Plants] ()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
      tableView.delegate = self
      arrFlower.append(Plants.init(namePlant: "Asiatic Lilies", imagePlant: UIImage(named: "AsiaticLilies")!))
      
      arrFlower.append(Plants.init(namePlant: "Carnation", imagePlant: UIImage(named: "Carnation")!))
      
      arrFlower.append(Plants.init(namePlant: "Peony", imagePlant: UIImage(named: "Peony")!))
      
      arrFlower.append(Plants.init(namePlant: "petunia", imagePlant: UIImage(named: "petunia")!))
      
      arrFlower.append(Plants.init(namePlant: "Rose", imagePlant: UIImage(named: "rose")!))
      
      arrFlower.append(Plants.init(namePlant: "False Sunflower", imagePlant: UIImage(named: "sunflower")!))
      
      
    }
    
}



let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "plants") as? DeetailVC

