//
//  PlantsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 19/05/1443 AH.
//

import UIKit

class PlantsVC: UIViewController , UITableViewDelegate {
   
  

  
  
  @IBOutlet weak var plantsTableView: UITableView!

 var plantsArray = [Problems]()
  
 

 
  override func viewDidLoad() {
    super.viewDidLoad()
   // plantsTableView.dataSource = self
    plantsTableView.delegate = self
    plantsTableView.dataSource = self
    
    
    plantsArray.append(Problems.init(description: """

Tiny green, brown, or black insect, located on the undersides of leaves
 Feeding damage causes: stunted plant growth and curled or distorted foliage

""",
                                  symptom: "Aphids", imagePlantProblem: UIImage(named: "Aphids")))
    
    
    plantsArray.append(Problems.init(description: """

Scale insect with white cottony appearance on stems, undersides of foliage (leaves), and on nodes (where the leaf or bud attaches to the plant's stems)
Feeding damage causes stunted plant growth

""", symptom: "Mealybugs", imagePlantProblem: UIImage(named: "Mealybugs")))
    
    
    plantsArray.append(Problems.init(description: """
Leaf tips turn yellow, then brown. Entire leaf may die

Management

Remove infected leaves and Avoid misting leaves

""", symptom: "Anthracnose", imagePlantProblem: UIImage(named:"Anthracnose")))
    
    plantsArray.append(Problems.init(description: """

rown to black soft or punky roots; Gridled soft stems with a brown or black ring near the soil line; Plants wilt and eventually die

Management

Avoid overwatering; Remove infected plants; Where symptoms are infecting some but not all the roots, cut out infected roots, then repot plant using sterile potting mix and a clean pot


""", symptom: "Root and stem rots", imagePlantProblem: UIImage(named: "Root and stem rots")))
    
    
    plantsArray.append(Problems.init(description: """

Chemical burn from overapplication of pesticides or fertilizer
Soft water

Soil remains dry for extended periods of time
Temperature is too low



""", symptom: "Brown leaf tips", imagePlantProblem: UIImage(named: "Brown leaf tips")))
    
    
    
    plantsArray.append(Problems.init(description: """

Fungus Oidium species
 White powdery fungal growth on foliage; Leaf distortion; Leaf drop may result
 Increase air circulation around plant; Avoid saturated soils; Remove severely infected foliage

""", symptom: "Powdery mildew", imagePlantProblem: UIImage(named: "Powderymildew")))
  }
  
  struct Problems {
    
    var description : String
    
    var symptom : String
    
    var imagePlantProblem : UIImage? = nil
    
    
    
  }

  
}




extension PlantsVC : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return plantsArray.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PlantsCell") as! PlantsCell

    cell.plantNameLabel.text = plantsArray[indexPath.row].symptom

     plantsArray[indexPath.row].description
  plantsArray[indexPath.row].imagePlantProblem


    return cell



  }
}



//struct Problems {
//  
//  var description : String
//  
//  var symptom : String
//  
//  var imagePlantProblem : UIImage? = nil
//  
//  
//  
//}
