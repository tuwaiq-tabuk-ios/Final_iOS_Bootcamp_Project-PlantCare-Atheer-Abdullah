//
//  FSCollectionReference.swift
//  PlantCare
//
//  Created by Atheer abdullah on 15/06/1443 AH.
//

import Foundation
import FirebaseFirestore


enum FSCollectionReference: String {
  case users
}

func getFSCollectionReference(_ collectionReference: FSCollectionReference ) -> CollectionReference {
  return Firestore.firestore()
    .collection(collectionReference.rawValue)
}

