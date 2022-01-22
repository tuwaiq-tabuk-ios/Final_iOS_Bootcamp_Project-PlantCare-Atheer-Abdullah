//
//  Item.swift
//  PlantCare
//
//  Created by Atheer abdullah on 15/06/1443 AH.
//

import Foundation
import UIKit

class Item :Equatable , Codable {

  // MARK: - Methods
  
 typealias Codable = Decodable & Encodable
//  
 static func ==(lhs: Item, rhs: Item) -> Bool {
 return lhs.nameyourPlant == rhs.nameyourPlant
   && lhs.value == rhs.value
  && lhs.water == rhs.water
  && lhs.dateWater == rhs.dateWater

  }
  
 
  var nameyourPlant: String?
  var value: Int
  var water : String?
  var dateWater : Date
  let id: String
  
  
  init(name: String, water: String?,
valueInDollars: Int ) {
  self.nameyourPlant = name
    self.value = valueInDollars
 self.water = water
self.dateWater = Date()
    self.id = UUID().uuidString
  }
  convenience init(random: Bool = false) {
    if random {
      let adjectives = ["", "", ""]
      let nouns = ["", "", ""]
      let randomAdjective = adjectives.randomElement()!
      let randomNoun = nouns.randomElement()!
      let randomName = "\(randomAdjective) \(randomNoun)"
      let randomValue = Int.random(in: 0..<100)
      let randomWater =
      UUID().uuidString.components(separatedBy: "-").first!
      self.init(name: randomName,
                water: randomWater ,valueInDollars: randomValue)
    } else {
      self.init(name: "", water: nil, valueInDollars: 0)
    }
  }
}


protocol Encodable {
  func encode(to encoder: Encoder) throws
}

protocol Decodable {
  init(from decoder: Decoder) throws
}
