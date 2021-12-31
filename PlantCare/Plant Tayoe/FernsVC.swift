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
    cell.setup4Cell(photo: date.photo, name: date.name)
    
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrFerns.count
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrFerns = [Ferns] ()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate =
    self
    arrFerns.append(Ferns.init(name: "Boston Fern", photo: UIImage(named: "Boston")!))
    
    arrFerns.append(Ferns.init(name: "Asparagus Fern", photo: UIImage(named: "Asparagus Fern")!))
    
    arrFerns.append(Ferns.init(name: "Crocodile Fern", photo: UIImage(named: "crocodile")!))
    
    arrFerns.append(Ferns.init(name: "Bird Nest Fern", photo: UIImage(named: "Birds")!))
    
    arrFerns.append(Ferns.init(name: "Rosy Maiden Hair Fern", photo: UIImage(named: "Rosy")!))
    
    arrFerns.append(Ferns.init(name: "Kimberly Queen Fern", photo: UIImage(named: "Queen")!))
    
    arrFerns.append(Ferns.init(name: "Elkhorn Fern", photo: UIImage(named: "Elkhorn Fern")!))
    
    
  }
  
  
}



struct Ferns {
  
  let name : String
  
  let photo : UIImage
  
}
