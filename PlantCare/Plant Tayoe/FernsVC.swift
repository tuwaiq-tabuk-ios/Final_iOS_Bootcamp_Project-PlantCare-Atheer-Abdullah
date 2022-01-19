//
//  FernsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class FernsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "FCell") as!
    FernsTableViewCell
    let date =
    arrFerns[indexPath.row]
    cell.setup4Cell(photo: date.imagePlant!, name: date.namePlant)
    cell.likeButton.tag = indexPath.row
    cell.likeButton.addTarget(self, action: #selector(addToFavorite(sender:)),
                                    for: .touchUpInside)
    
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrFerns.count
  }
  
  @objc
  func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrFerns = [Plants] ()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate =
    self
    arrFerns.append(Plants.init(namePlant: "Boston Fern", imagePlant: UIImage(named: "Boston")!))
    
    arrFerns.append(Plants.init(namePlant: "Asparagus Fern", imagePlant: UIImage(named: "Asparagus Fern")!))
    
    arrFerns.append(Plants.init(namePlant: "Crocodile Fern", imagePlant: UIImage(named: "crocodile")!))
    
    arrFerns.append(Plants.init(namePlant: "Bird Nest Fern", imagePlant: UIImage(named: "Birds")!))
    
    arrFerns.append(Plants.init(namePlant: "Rosy Maiden Hair Fern", imagePlant: UIImage(named: "Rosy")!))
    
    arrFerns.append(Plants.init(namePlant: "Kimberly Queen Fern", imagePlant: UIImage(named: "Queen")!))
    
    arrFerns.append(Plants.init(namePlant: "Elkhorn Fern", imagePlant: UIImage(named: "Elkhorn Fern")!))
    
    
  }
  let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "plants") as? DeetailVC

  
}


