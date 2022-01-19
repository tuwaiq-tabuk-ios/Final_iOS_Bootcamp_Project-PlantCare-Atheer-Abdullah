//
//  FlowersTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class FlowersTableViewCell: UITableViewCell {

  

  
  @IBOutlet weak var flowerImageView: UIImageView!
  @IBOutlet weak var nameFlowerLAB: UILabel!
  
  @IBOutlet weak var likeButton: UIButton!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  
  func setup5Cell(photo:
                  UIImage, name: String){
    flowerImageView.image = photo
    nameFlowerLAB.text = name
    
  }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
