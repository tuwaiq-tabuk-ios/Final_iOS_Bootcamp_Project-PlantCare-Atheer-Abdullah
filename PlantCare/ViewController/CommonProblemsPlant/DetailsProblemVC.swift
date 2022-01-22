//
//  DetailsProblemVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 08/06/1443 AH.
//

import UIKit

class DetailsProblemVC: UIViewController {

  // MARK: IBOutlet
  
  
  @IBOutlet weak var name1: UILabel!
  
  @IBOutlet weak var image: UIImageView!
  
  @IBOutlet weak var solutionLabel: UILabel!

  
  
  
  var nameProplem: Problems!
  var imageProblem = UIImage()
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    name1.text = "The Proplem  \( nameProplem.nameP)"
    image.image = nameProplem.image
    solutionLabel.text = nameProplem.solution
    
    
    
  }
  
  
  
}
