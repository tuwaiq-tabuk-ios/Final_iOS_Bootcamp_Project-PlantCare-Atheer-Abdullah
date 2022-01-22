//
//  PlantProblemVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 08/06/1443 AH.
//

import UIKit


class CommonProblemsPlantVC: UIViewController {

  
  // MARK: - Properties
  
  var problems = [
    Problems(nameP: "HUMIDITY", image: UIImage(named: "Humidity")!, solution: " Solution - Move to less drafty space like bathroom or mist leaves often"),
                               Problems(nameP: "DISEASE", image: UIImage(named: "diseases")!, solution: "Solution - remove infected leaves and apply white oil or nursery recommended spray"),
                               Problems(nameP: "OVERWATERED", image: UIImage(named: "Elephant")!, solution: " Solution -  back off on watering. Make sure the soil is completely dry before the next water"),
                               Problems(nameP: "THIRSTY", image: UIImage(named: "THyrsty")!, solution: " Solution - Sit in a sink full of water to soak, then water more often letting soil dry between drinks"),
                               Problems(nameP: "NUTRIENTS", image: UIImage(named: "nutrients")!, solution: "Solution - repot in some nutrient rich soil"),
                               Problems(nameP: "SUNLIGHT", image: UIImage(named: "Sunlight")!, solution: " Solution - Move to a bigger window or place outside")
  
  ]
  

  
  @IBOutlet weak var tableViwe: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    tableViwe.dataSource = self
    tableViwe.delegate = self

    
}

}


struct Problems {
  var nameP = ""
  var image = UIImage()
  var solution = ""
}


extension CommonProblemsPlantVC :  UITableViewDelegate , UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return problems.count
  }
  
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CellProblem", for: indexPath) as? ProblemPlantTVCell
    cell?.name.text = problems[indexPath.row].nameP
    cell?.imagePlant.image = problems[indexPath.row].image
    cell?.solution.text = problems[indexPath.row].solution
    return cell!
  }
  
//
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "showDetils" {
//      let controller = segue.destination as!
//      DetailsProblemVC
//
//
//    }


  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let Problem = problems[indexPath.row]
    print(Problem.nameP)
    print(Problem.image)
    print(Problem.solution)
    
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsProblemVC") as? DetailsProblemVC
    
    if let viewController = vc {
      viewController.nameProplem = Problem
      viewController.imageProblem = problems[indexPath.row].image
      
      present(viewController, animated: true, completion: nil)
      
      
    }


  }
}
