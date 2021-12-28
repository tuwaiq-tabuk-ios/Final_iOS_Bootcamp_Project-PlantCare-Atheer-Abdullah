//
//  PlantTaypesVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 23/05/1443 AH.
//

import UIKit

class PlantTaypesVC: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!



  override func viewDidLoad() {
        super.viewDidLoad()

    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.collectionViewLayout = UICollectionViewFlowLayout()


    }
}


extension PlantTaypesVC : UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return taypesPlants.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TaypesPlantsCVC", for: indexPath) as! TaypesPlantsCVC
    cell.setup(with: taypesPlants[indexPath.row])
    return cell
  }
}

extension PlantTaypesVC : UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: 200, height: 300)
  }
}

extension PlantTaypesVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(taypesPlants[indexPath.row].title)
    }
}

  
