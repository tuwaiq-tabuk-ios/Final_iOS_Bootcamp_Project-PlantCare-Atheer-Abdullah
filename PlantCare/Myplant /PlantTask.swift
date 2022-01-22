//
//  PlantTask.swift
//  PlantCare
//
//  Created by Atheer abdullah on 16/06/1443 AH.
//

import UIKit
import Firebase


struct PlantTask {
  
  
    var title: String
  var image: UIImage? = nil
  var details : String? = nil
}

//}
//  init(title: String, details: String) {
//    self.title = title
//    self.details = details
//  }
//
//  init(data: [String: Any]) {
//    title = data["title"] as? String ?? ""
//    details = data["deteils"] as? String ?? ""
//
//  }
//
//
//  init(document: QueryDocumentSnapshot) {
//    let data = document.data()
//    title = data["title"] as? String ?? ""
//    details = data["details"] as? String ?? ""
//   
//  }
//
//  func completeToggled() -> PlantTask {
//    return PlantTask(title: title, details: details)
//  }
//
//}
//
//
//
//
