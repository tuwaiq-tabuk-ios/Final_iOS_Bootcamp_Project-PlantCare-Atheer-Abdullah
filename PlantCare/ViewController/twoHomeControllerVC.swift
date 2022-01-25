//
//  twoHomeControllerVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit

class TwoHomeControllerVC: UIViewController ,UICollectionViewDelegate,
                           UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  // MARK: IBOutlet
  
  @IBOutlet weak var pageControl: UIPageControl!
  @IBOutlet weak var collectionView: UICollectionView!
  
  
  var arrPhotos : [ShowPlant] = [ShowPlant(image: UIImage(named: "2656")!,
                                           step: "Water plants regularly."),
                                 ShowPlant(image: UIImage(named: "Peony")!,
                                           step: "Check the soil moisture"),
                                 ShowPlant(image: UIImage(named: "46574")!,
                                           step: "Pour water at room temperature."),
                                 
                                 ShowPlant(image: UIImage(named: "1323")!,
                                           step: "Give some sunlight or artificial light to plants."),
                                 ShowPlant(image: UIImage(named: "CherryTree")!,
                                           step: "Use humidifier to maintain surroundings."),
                                 ShowPlant(image: UIImage(named: "Parlor")!,
                                           step: "Add fertilizers to the pot to provide nutrients to plant."), ShowPlant(image: UIImage(named: "Elkhorn Fern")!,step: "Prune your plant regularly.")]
  
  var timer : Timer?
  var currentCellIndex = 0
  
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    
    collectionView.delegate = self
    collectionView.dataSource = self
    pageControl.numberOfPages = arrPhotos.count
    
    startTimer()
    
  }
  // MARK: - Methods
  
  func startTimer(){
    
    timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    
  }
  
  @objc func moveToNextIndex(){
    
    if currentCellIndex < arrPhotos.count - 1{
      
      currentCellIndex += 1
    }else{
      currentCellIndex = 0
    }
    
    collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredVertically, animated: true)
    pageControl.currentPage = currentCellIndex
    
  }
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return arrPhotos.count
  }
  
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCellSHow", for: indexPath) as! ShowCollectionVC
    cell.imageView.image = arrPhotos[indexPath.row].image
    cell.Lable.text = arrPhotos[indexPath.row].step
    
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  struct ShowPlant {
    
    var image: UIImage
    var step : String
    
  }
}


