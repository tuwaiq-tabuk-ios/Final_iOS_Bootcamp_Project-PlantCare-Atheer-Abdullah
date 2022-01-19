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
    cell.setupCell(photo: data.imagePlant!, name: data.namePlant)
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
  
  var arrPlams = [Plants]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
      tableView.delegate = self
       

      arrPlams.append(Plants.init(namePlant: "Areca Palm", imagePlant: UIImage(named: "ArecaPalm")!))
      arrPlams.append(Plants.init(namePlant: "Kentia Palm", imagePlant: UIImage(named: "Kentia")!))
      arrPlams.append(Plants.init(namePlant: "Sago Palm", imagePlant: UIImage(named: "SagoPalm")!))
      arrPlams.append(Plants.init(namePlant: "Lady Palm", imagePlant: UIImage(named: "LadyPalm")!))
      arrPlams.append(Plants.init(namePlant: "Parlor Palm", imagePlant: UIImage(named: "Parlor")!))
      arrPlams.append(Plants.init(namePlant: "Majestic Palm", imagePlant: UIImage(named: "Majestic")!))
      
      
    }

}



  

