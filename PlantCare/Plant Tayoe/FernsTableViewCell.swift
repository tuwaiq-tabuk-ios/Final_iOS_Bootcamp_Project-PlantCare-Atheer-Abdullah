//
//  FernsTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class FernsTableViewCell: UITableViewCell {

  
  @IBOutlet weak var fernsImageView: UIImageView!
  
  
  @IBOutlet weak var nameFernsLBL: UILabel!
  
  
  @IBOutlet weak var likeButton: UIButton!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func setup4Cell(photo:
                  UIImage, name: String){
    fernsImageView.image = photo
    nameFernsLBL.text = name
    
  }
  
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
