//
//  DeetailVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 06/06/1443 AH.
//

import UIKit
import Firebase

class DeetailVC: UIViewController {
  
  //MARK: - IBOutlet
  @IBOutlet weak var imagePlant: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var sunImage: UIImageView!
  @IBOutlet weak var sunLab: UILabel!
  @IBOutlet weak var waterLAb: UILabel!
  @IBOutlet weak var waterPh: UIImageView!
  @IBOutlet weak var careLa: UILabel!
  @IBOutlet weak var carePh: UIImageView!
  
  
  var namePlant : Plants!
  var image = UIImage()
  var index: Int!
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    nameLabel.text = namePlant.namePlant
    
    imagePlant.image = namePlant.imagePlant
    
    sunLab.text = namePlant.sun
    sunImage.image = UIImage.init(named: "sun")
    
    careLa.text = namePlant.fertilizer
    carePh.image =  UIImage(named: "care")
    
    waterPh.image = UIImage(named: "water")
    waterLAb.text = namePlant.water
    
    
    
  }
  
  
}





