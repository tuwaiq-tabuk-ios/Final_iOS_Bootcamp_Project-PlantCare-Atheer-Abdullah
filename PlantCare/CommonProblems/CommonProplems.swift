//
//  TaypesPlantsCVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//

import UIKit

class CommonProplems: UICollectionViewCell {
    
  @IBOutlet weak var plantProblemsImage: UIImageView!
  
  
  @IBOutlet weak var taypesNameLabel: UILabel!
  
  func setup(with taypesPlants:Problems) {
    plantProblemsImage.image = taypesPlants.imageTaype
    taypesNameLabel.text = taypesPlants.title
    
    
  }
  
}
