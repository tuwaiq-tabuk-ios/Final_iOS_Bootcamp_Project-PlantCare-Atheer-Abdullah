//
//  DetailCareTableVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 30/05/1443 AH.
//

import UIKit

class DetailCareTableVC: UITableViewCell {

  
  @IBOutlet weak var careImage: UIImageView!
  
  
  @IBOutlet weak var careLabele: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
