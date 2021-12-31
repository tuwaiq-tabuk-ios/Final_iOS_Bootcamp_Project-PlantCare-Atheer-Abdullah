//
//  PalmsViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class PalmsViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrPlams.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PCell") as! PalmsTableViewCell
    let data = arrPlams[indexPath.row]
    cell.setupCell(photo: data.photo, name: data.name)
    return cell
  }
  


  @IBOutlet weak var tableView: UITableView!
  
  var arrPlams = [Palms]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
      tableView.delegate = self
       

      arrPlams.append(Palms.init(name: "Areca Palm", photo: UIImage(named: "ArecaPalm")!))
      arrPlams.append(Palms.init(name: "Kentia Palm", photo: UIImage(named: "Kentia")!))
      arrPlams.append(Palms.init(name: "Sago Palm", photo: UIImage(named: "SagoPalm")!))
      arrPlams.append(Palms.init(name: "Lady Palm", photo: UIImage(named: "LadyPalm")!))
      arrPlams.append(Palms.init(name: "Parlor Palm", photo: UIImage(named: "Parlor")!))
      arrPlams.append(Palms.init(name: "Majestic Palm", photo: UIImage(named: "Majestic")!))
      
      
    }

}


struct Palms {
  let name : String
  
  let photo : UIImage
  
}
