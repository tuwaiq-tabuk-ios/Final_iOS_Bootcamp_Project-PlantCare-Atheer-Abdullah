//
//  DetailsCareTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 07/06/1443 AH.
//

import UIKit

class DetailsCareTableViewCell: UITableViewCell {

  
  
  @IBOutlet weak var careImage: UIImageView!
  @IBOutlet weak var careLabele: UILabel!  

  

  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
