//
//  PlantDetilsViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 03/06/1443 AH.
//
import CoreData
import UIKit

class PlantDetilsViewController: UIViewController {

  
  static let dateFormatter: DateFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "dd MM yyyy"
      return formatter
  }()
  
  @IBOutlet weak var plantNicknameLabel: UILabel!
  
  @IBOutlet weak var plantLatinNameLabel: UILabel!
  
  @IBOutlet weak var stagesStackView: UIStackView!

  @IBOutlet weak var plantedStageButton: UIButton!
  
  @IBOutlet weak var shootingStageButton: UIButton!
  
  @IBOutlet weak var buddingStageButton: UIButton!
  
  @IBOutlet weak var floweringStageButton: UIButton!
  
  @IBOutlet weak var fruitingStageButton: UIButton!
  
  @IBOutlet weak var endOfLifeStageButton: UIButton!
  
  
  var buttons: [UIButton] {
      return [
          plantedStageButton,
          shootingStageButton,
          buddingStageButton,
          floweringStageButton,
          fruitingStageButton,
          endOfLifeStageButton
      ]
  }

  
  var context: NSManagedObjectContext!
  var plant: Plant!

  // MARK: - Lifecycle
  
  override func viewDidLoad() {
      super.viewDidLoad()
      
      title = plant.name
      plantNicknameLabel.text = "\"\(plant.nickname ?? "")\""
      plantLatinNameLabel.text = plant.latinName
      
      updateItemVisibilities()
      updateStages()
      styleButtons()
  }


// MARK: - IBActions

@IBAction func upgradeToPlanted() {
    plant.planted(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error planting plant: \(plant.name)")
    }
}

@IBAction func upgradeToShooting() {
    plant.shooting(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error shooting plant: \(plant.name)")
    }
}

@IBAction func upgradeToBudding() {
    plant.budding(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error budding plant: \(plant.name)")
    }
}

@IBAction func upgradeToFlowering() {
    plant.flowering(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error flowering plant: \(plant.name)")
    }
}

@IBAction func upgradeToFruiting() {
    plant.fruiting(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error fruiting plant: \(plant.name)")
    }
}

@IBAction func upgradeToEndOfLife() {
    plant.endOfLife(on: Date(), in: context)
    
    do {
        try context.save()
        updateItemVisibilities()
        updateStages()
    } catch {
        print("Error ending life of plant: \(plant.name)")
    }
}
}
