//
//  PalmsTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class PalmsTableViewCell: UITableViewCell {

  
  @IBOutlet weak var palmsImageViwe: UIImageView!
  
  
  @IBOutlet weak var palmLabel: UILabel!
  
  
  
  @IBOutlet weak var likeButton: UIButton!
  

  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func setupCell(photo: UIImage, name: String){
    
    palmsImageViwe.image = photo
    palmLabel.text = name
    
    
  }
  
  
  
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
