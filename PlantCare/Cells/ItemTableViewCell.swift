//
//  ItemTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 15/06/1443 AH.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

  //MARK: - IBOutlet
  
  @IBOutlet weak var nameTask: UILabel!
  @IBOutlet weak var wate: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
