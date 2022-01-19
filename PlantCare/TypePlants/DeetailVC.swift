//
//  DeetailVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 06/06/1443 AH.
//

import UIKit
import Firebase

class DeetailVC: UIViewController {
  

  @IBOutlet weak var imagePlant: UIImageView!
  
  @IBOutlet weak var nameLabel: UILabel!
  
  
  @IBOutlet weak var sunImage: UIImageView!
  @IBOutlet weak var sunLab: UILabel!
  @IBOutlet weak var waterLAb: UILabel!
  @IBOutlet weak var waterPh: UIImageView!
  @IBOutlet weak var careLa: UILabel!
  @IBOutlet weak var carePh: UIImageView!
  

  var nameP : Plants!
  var image = UIImage()
  var index: Int!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    nameLabel.text = nameP.namePlant
    
    imagePlant.image = nameP.imagePlant
  
    
    
    
    sunLab.text = nameP.sun
    sunImage.image = UIImage.init(named: "sun")
    
    careLa.text = nameP.fertilizer
    carePh.image =  UIImage(named: "care")
    
    waterPh.image = UIImage(named: "water")
    waterLAb.text = nameP.water
    
   
    
    
    setupUI()
    
    
    NotificationCenter.default.addObserver(self, selector: #selector(currentPlantEdited), name: NSNotification.Name(rawValue: "CurrentPlantEdited"), object: nil)
    
  }
  
  
  
  @objc func currentPlantEdited(notification: Notification)
  {
      if let todo = notification.userInfo?["editedPlant"] as? Plants
      {
        self.nameP = todo
          setupUI()
          
      }
  }
  
  func setupUI(){
    
    imagePlant.image = nameP.imagePlant
    nameLabel.text = nameP.namePlant
    sunLab.text = nameP.sun
    waterLAb.text = nameP.water
    careLa.text = nameP.fertilizer
  }
  
  @IBAction func addMyplant(_ sender: Any) {    
//    if let viewController = storyboard?.instantiateViewController(withIdentifier: "NewPlantVC") as? NewPlantViewController{
//
//      viewController.isCreation = false
//      viewController.editedPlant = nameP
//      viewController.editedPlantIndex = index
//
//      navigationController?.pushViewController(viewController, animated: true)
//
    
  }
  
  
    var isCreation = true
    var editedPlant : Plants?
    var editedPlantIndex : Int?
    
  }
  

  
