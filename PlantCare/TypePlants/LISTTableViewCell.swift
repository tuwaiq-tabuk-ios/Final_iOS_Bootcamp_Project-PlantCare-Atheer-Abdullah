//
//  LISTTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 06/06/1443 AH.
//

import UIKit

class LISTTableViewCell: UITableViewCell {

  
  @IBOutlet weak var plantImage: UIImageView!

  @IBOutlet weak var nameLAB: UILabel!
  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    }
  
  
  func setupCell(photo: UIImage, name: String){
    plantImage.image = photo
    nameLAB.text = name
    
  }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
