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
    cell.setup2Cell( photo: data.imagePlant!, namePlant: data.namePlant)
    cell.hFavorite.tag = indexPath.row
    cell.hFavorite.addTarget(self, action: #selector(addToFavorite(sender:)),
                                    for: .touchUpInside)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DeetailVC
    
 //   vc?.pantsImage = UIImage(named: arrHerb[indexPath.row])!
//  vc?.nameLable = arrHerb[indexPath.row]
    self.navigationController?.pushViewController(vc!, animated: true)
  }
  @objc
  func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
  }
  

  @IBOutlet weak var tableView: UITableView!
  
  
  var arrHerb =  [Plants]()
                  
                  
         
  
    override func viewDidLoad() {
        super.viewDidLoad()
  
      tableView.dataSource = self
      tableView.delegate = self
      
      arrHerb.append(Plants.init(namePlant: "Rosemary", imagePlant: UIImage(named: "Rosemary2")!))
                    
      arrHerb.append(Plants.init(namePlant: "Mint", imagePlant: UIImage(named: "Mint")!))
      
      arrHerb.append(Plants.init(namePlant: "Msche", imagePlant: UIImage(named: "Msche")!))
      
      arrHerb.append(Plants.init(namePlant: "Basil", imagePlant: UIImage(named: "Basil")!))
      
    arrHerb.append(Plants.init(namePlant: "Cilantro (Coriander)", imagePlant: UIImage(named: "cilantro ")!))
      
      arrHerb.append(Plants.init(namePlant: "Oregano", imagePlant: UIImage(named: "Oregano")!))
      
    }
    
}
