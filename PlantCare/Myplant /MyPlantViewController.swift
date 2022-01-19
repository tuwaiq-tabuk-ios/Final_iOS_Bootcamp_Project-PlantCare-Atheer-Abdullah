//
//  MyPlantViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit

class MyPlantViewController: UIViewController {

  
  var myPlantArr = [" "]


  //  MARK: - @IBOutlet
  
  @IBOutlet weak var tableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
      tableView.dataSource = self
      tableView.delegate = self
      
      
    }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowDetail" {
      let destanation = segue.destination as! NewPlantViewController
      let selectedIndexPath = tableView.indexPathForSelectedRow!
//      destanation.spot = spots.spotArray[selectedIndexPath.row]
      
    }
  }
}


  
 
// MARK: - Table view data source
extension MyPlantViewController: UITableViewDelegate , UITableViewDataSource {
  //Number Of Rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return myPlantArr.count

  }
  // Cell Data
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "myPlantCell", for: indexPath) as! MyPlantListTVCell
    


    return cell
  }
  
}

