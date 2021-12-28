//
//  PlantsCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 22/05/1443 AH.
//

import UIKit

class PlantsCell: UITableViewCell {
  @IBOutlet weak var plantNameLabel: UILabel!
  
  
  @IBOutlet weak var plantImageView: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
