//
//  DetailsProblemVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 08/06/1443 AH.
//

import UIKit

class DetailsProblemVC: UIViewController {

  
  @IBOutlet weak var name1: UILabel!
  
  @IBOutlet weak var image: UIImageView!
  
  
  @IBOutlet weak var solutionLabel: UILabel!

  
  
  
  var nameProplen: Problems!
  var imageProblem = UIImage()
  
   
  override func viewDidLoad() {
        super.viewDidLoad()
    
    name1.text = "the proplem \( nameProplen.nameP)"
    image.image = nameProplen.image
    solutionLabel.text = nameProplen.solution
    
    
    
  }
  
  
  
}
