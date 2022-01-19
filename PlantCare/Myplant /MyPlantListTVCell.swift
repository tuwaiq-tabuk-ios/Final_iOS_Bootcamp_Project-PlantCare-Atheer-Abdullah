//
//  MyPlantListTVCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit

class MyPlantListTVCell: UITableViewCell {

  
  @IBOutlet weak var imageYourPlant: UIImageView!
  
  @IBOutlet weak var nameYourPlant: UILabel!
  
  @IBOutlet weak var careLabel: UILabel!
  
  @IBOutlet weak var taimOfWater: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
