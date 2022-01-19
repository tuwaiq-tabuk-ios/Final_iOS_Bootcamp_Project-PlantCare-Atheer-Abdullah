//
//  TreesTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class TreesTableViewCell: UITableViewCell {

  @IBOutlet weak var treeImageViwe: UIImageView!
  
  
  @IBOutlet weak var treeLabel: UILabel!
  
  @IBOutlet weak var btnAddToFavorite: UIButton!
  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  func setup3Cell(photo: UIImage, name: String){
    treeImageViwe.image = photo
    treeLabel.text = name
    
    
  }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
