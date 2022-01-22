//
//  MyPlantListTVCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit

class PlantListTVCell: UITableViewCell {
//TodoCell
  
  @IBOutlet weak var imageYourPlant: UIImageView!
  
  @IBOutlet weak var nameYourPlant: UILabel!
  
 


  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
