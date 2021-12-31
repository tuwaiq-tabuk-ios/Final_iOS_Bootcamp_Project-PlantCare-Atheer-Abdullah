//
//  HerbsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 25/05/1443 AH.
//

import UIKit

class HerbsVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrHerb.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "hCell") as! HerbsTableViewCell
    let data = arrHerb[indexPath.row]
    cell.setup2Cell(photo: data.photo, name: data.name)
    return cell
  }
  
  

  @IBOutlet weak var tableView: UITableView!
  
  
  var arrHerb =  [Harbes]()
                  
                  
         
  
    override func viewDidLoad() {
        super.viewDidLoad()
  
      tableView.dataSource = self
      tableView.delegate = self
      
      arrHerb.append(Harbes.init(name: "Rosemary", photo: UIImage(named: "Rosemary2")!))
                    
      arrHerb.append(Harbes.init(name: "Mint", photo: UIImage(named: "Mint")!))
      
      arrHerb.append(Harbes.init(name: "Msche", photo: UIImage(named: "Msche")!))
      
      arrHerb.append(Harbes.init(name: "Basil", photo: UIImage(named: "Basil")!))
      
    arrHerb.append(Harbes.init(name: "Cilantro (Coriander)", photo: UIImage(named: "cilantro ")!))
      
      arrHerb.append(Harbes.init(name: "Oregano", photo: UIImage(named: "Oregano")!))
      
    }
    
}


struct Harbes {
  let name : String
  
  let photo : UIImage
}
