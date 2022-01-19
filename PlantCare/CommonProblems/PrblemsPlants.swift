//
//  PlantTaypesVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//

import UIKit
//
//class PrblemsPlants: UIViewController {
//  
//  @IBOutlet weak var collectionView: UICollectionView!
//  
//  
//  
//  var taypesPlants = Problems1(title: "Decorative blooming", imageTaype: UIImage(named: "Decorative blooming")!),
//  
//    
////
////  Problems1(title: "Decorative blooming", imageTaype: UIImage(named: "Decorative blooming")!),
////    Problems1(title: "Decorative deciduous", imageTaype: UIImage(named: "Decorative deciduous")!),
////    Problems1(title: "Houseplant", imageTaype: UIImage(named: "Houseplant")!),
////
////
////
//  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    
//    collectionView.dataSource = self
//    collectionView.delegate = self
//    collectionView.collectionViewLayout = UICollectionViewFlowLayout()
//  }
//}
//
//
//extension PrblemsPlants : UICollectionViewDataSource{
//  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//    return taypesPlants.count
//  }
//  
//  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TaypesPlantsCVC", for: indexPath) as! CommonProplems
//    cell.setup(with: taypesPlants[indexPath.row])
//    return cell
//  }
//  
//  
//  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    //        print(myColors[indexPath.row])
//    performSegue(withIdentifier: "showTableViewVC", sender: nil)
//  }
//  
//  
//  
//}
//
//
//extension ViewController{
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "showTableViewVC" {
//      _ = segue.destination as! PlantsVC
//      //          controller.selectedCell
//      
//    }
//    
//  }
//}
//
//extension PrblemsPlants : UICollectionViewDelegateFlowLayout {
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//    return CGSize(width: 200, height: 300)
//  }
//}
//
//
