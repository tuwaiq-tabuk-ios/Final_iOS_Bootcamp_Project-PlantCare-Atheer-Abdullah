//
//  CactiVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class CactiVC: UIViewController , UITableViewDelegate, UITableViewDataSource{
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CCell") as! CactiTableViewCell
    
    let date =
    arrCacti[indexPath.row]
    cell.setup6Cell(photo: date.photo, name: date.name)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrCacti.count
  }
  
  
  @IBOutlet weak var tableView: UITableView!
  
  var arrCacti = [Cacti] ()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      tableView.dataSource = self
      tableView.delegate = self
      arrCacti.append(Cacti.init(name: "Aloe Vera", photo: UIImage(named: "AloeVera")!))
      
      arrCacti.append(Cacti.init(name: "Agave", photo: UIImage(named: "Agave")!))
      
      arrCacti.append(Cacti.init(name: "Blue Agave", photo: UIImage(named: "BlueAgave")!))
      
      arrCacti.append(Cacti.init(name: "Haworthia Retusa", photo: UIImage(named: "haworthia retusa")!))
      
      arrCacti.append(Cacti.init(name: "Lace Aloe", photo: UIImage(named: "LaceAloe")!))
      
      arrCacti.append(Cacti.init(name: "Snake Plant", photo: UIImage(named: "SnakePlant")!))
      
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


struct Cacti {
  
  let name : String
  
  let photo : UIImage
  
}
