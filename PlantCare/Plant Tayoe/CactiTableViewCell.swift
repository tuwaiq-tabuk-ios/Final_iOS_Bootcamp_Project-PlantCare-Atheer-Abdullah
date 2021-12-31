//
//  CactiTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 26/05/1443 AH.
//

import UIKit

class CactiTableViewCell: UITableViewCell {

  @IBOutlet weak var cactiImageView: UIImageView!
  
  @IBOutlet weak var cactiLabel: UILabel!
  
  
  @IBOutlet weak var likeButten: UIButton!
  
  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
  func setup6Cell(photo:
                  UIImage, name: String){
    cactiImageView.image = photo
    cactiLabel.text = name
    
  }
  
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
