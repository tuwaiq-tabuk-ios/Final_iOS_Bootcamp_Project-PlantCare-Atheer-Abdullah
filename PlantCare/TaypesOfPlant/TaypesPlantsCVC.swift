//
//  TaypesPlantsCVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//

import UIKit

class TaypesPlantsCVC: UICollectionViewCell {
    
  @IBOutlet weak var plantTaypesImage: UIImageView!
  
  
  @IBOutlet weak var taypesNameLabel: UILabel!
  
  func setup(with taypesPlants:TaypesOfPlant) {
    plantTaypesImage.image = taypesPlants.imageTaype
    taypesNameLabel.text = taypesPlants.title
    
    
  }
  
}
