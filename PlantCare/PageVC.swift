//
//  PageVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 01/06/1443 AH.
//

import UIKit

class PageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

  

  var arrContainers = [UIViewController]()
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "page1")
      let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "page2")
      let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "page3")
      
      arrContainers.append(vc1!)
      arrContainers.append(vc2!)
      arrContainers.append(vc3!)
      
      delegate = self
      dataSource = self
      
      if let firstVC = arrContainers.first {
        
        setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
      }
       
    }
    
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    
    guard let currentIndex = arrContainers.firstIndex(of: viewController)else{
    return nil
  }
  let previousIndex = currentIndex - 1

    guard previousIndex >= 0 else {
      return nil
    }
    
    return arrContainers[previousIndex]
 
  }
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let currentIndex = arrContainers.firstIndex(of: viewController) else {
      return nil
    }
    
    let afterIndex = currentIndex + 1
    guard afterIndex < arrContainers.count else {
      
    
    return nil
  }
return arrContainers[afterIndex]
}
}
