//
//  HerbsTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 25/05/1443 AH.
//

import UIKit

class HerbsTableViewCell: UITableViewCell {
  
  @IBOutlet weak var herbImageView: UIImageView!
  
  @IBOutlet weak var hFavorite: UIButton!
  
  @IBOutlet weak var herbNameLabel: UILabel!
  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  func setup2Cell(photo: UIImage,
                  namePlant: String){
    
    herbImageView.image = photo
    herbNameLabel.text = namePlant
    
  }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

