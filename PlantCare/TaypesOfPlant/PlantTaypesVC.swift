//
//  PlantTaypesVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//

import UIKit

class PlantTaypesVC: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  
  

  let taypesPlants : [TaypesOfPlant] = [
    TaypesOfPlant(title: "Herbs", imageTaype: UIImage(named: "Herbs")!),
    TaypesOfPlant(title: "Flower", imageTaype: UIImage(named: "Berries")!),
    TaypesOfPlant(title: "Succulents", imageTaype: UIImage(named: "Succulents")!),
    TaypesOfPlant(title: "Decorative blooming", imageTaype: UIImage(named: "Decorative blooming")!),
    TaypesOfPlant(title: "Decorative deciduous", imageTaype: UIImage(named: "Decorative deciduous")!),
    TaypesOfPlant(title: "Houseplant", imageTaype: UIImage(named: "Houseplant")!),
    
    
  ]
  
  override func viewDidLoad() {
        super.viewDidLoad()

    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.collectionViewLayout = UICollectionViewFlowLayout()


    }
}


extension PlantTaypesVC : UICollectionViewDataSource{
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return taypesPlants.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TaypesPlantsCVC", for: indexPath) as! TaypesPlantsCVC
    cell.setup(with: taypesPlants[indexPath.row])
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print(myColors[indexPath.row])
      performSegue(withIdentifier: "showTableViewVC", sender: nil)
  }



}


extension ViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTableViewVC" {
          _ = segue.destination as! PlantsVC
//          controller.selectedCell 
          
        }

    }
}

extension PlantTaypesVC : UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: 200, height: 300)
  }
}


