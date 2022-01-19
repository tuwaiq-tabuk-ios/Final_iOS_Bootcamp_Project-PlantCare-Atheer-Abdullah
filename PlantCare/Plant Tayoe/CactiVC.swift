//
//  CactiVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class CactiVC: UIViewController , UITableViewDelegate, UITableViewDataSource{
  
  var arrCacti = [Plants] ()
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CCell") as! CactiTableViewCell
    
    let date =
    arrCacti[indexPath.row]
    cell.setup6Cell(photo: date.imagePlant!, name: date.namePlant)
    
    cell.likeButten.tag = indexPath.row
    cell.likeButten.addTarget(self, action: #selector(addToFavorite(sender:)),
                                    for: .touchUpInside)
    
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrCacti.count
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DeetailVC

    if let viewController = vc {


     // vc?.pantsImage = arrCacti.first?.imagePlant.self
   //   vc?.nameLable = arrCacti.endIndex.
      self.navigationController?.pushViewController(viewController, animated: true)

    }
  }
  
  @objc
  func addToFavorite(sender: UIButton){
    print("button index = \(sender.tag)")
    sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  

  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      tableView.dataSource = self
      tableView.delegate = self
      arrCacti.append(Plants.init(namePlant:"Aloe Vera", imagePlant: UIImage(named: "AloeVera")!))
      
      arrCacti.append(Plants.init(namePlant: "Agave", imagePlant: UIImage(named: "Agave")!))
      
      arrCacti.append(Plants.init(namePlant: "Blue Agave", imagePlant: UIImage(named: "BlueAgave")!))
      
      arrCacti.append(Plants.init(namePlant: "Haworthia Retusa", imagePlant: UIImage(named: "haworthia retusa")!))
      
      arrCacti.append(Plants.init(namePlant: "Lace Aloe", imagePlant: UIImage(named: "LaceAloe")!))
      
      arrCacti.append(Plants.init(namePlant: "Snake rePlant", imagePlant: UIImage(named: "SnakePlant")!))
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


