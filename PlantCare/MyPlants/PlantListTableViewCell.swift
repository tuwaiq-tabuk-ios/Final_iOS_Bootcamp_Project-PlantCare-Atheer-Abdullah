//
//  PlantListTableViewCell.swift
//  PlantCare
//
//  Created by Atheer abdullah on 03/06/1443 AH.
//

import UIKit

class PlantListTableViewCell: UITableViewCell {

  
  static let dateFormatter: DateFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "dd MM yyyy"
      return formatter
  }()
  
  static let reuseIdentifier = "PlantListTableViewCellReuseIdentifier"

  
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
