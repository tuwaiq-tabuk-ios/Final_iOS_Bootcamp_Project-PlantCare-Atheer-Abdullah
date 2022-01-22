//
//  ProblemPlantTVCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 08/06/1443 AH.
//

import UIKit

class ProblemPlantTVCell: UITableViewCell {

  
  //MARK: - IBOutlet
  
  @IBOutlet weak var imagePlant: UIImageView!
  @IBOutlet weak var name: UILabel!
  @IBOutlet weak var solution: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
