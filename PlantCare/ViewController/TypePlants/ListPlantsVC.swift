//
//  ListPlantsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 06/06/1443 AH.
//

import UIKit

class ListPlantsVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
  //MARK: - IBOutlet
  
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: - Properties
  
  var typesOfPlants = ["Trees ", "Herbs", "Palms", "Cacti","Ferns", "Flowers"]
  
  
  var arrRows = [[Plants(namePlant: "Almond",
                         imagePlant: UIImage(named: "Almond")!,
                         sun: "Full sun",
                         water: "1-2 times a week",
                         fertilizer: "you fertilizer an almond tree in spring"),
                  Plants(namePlant: "Neem Tree",
                         imagePlant: UIImage(named: "Neem")!,
                         sun:"Part - full",
                         water: "Once a week",
                         fertilizer: "Fertilizer: After germinating the tree use a good-quality balanced fertilizer to feed in spring and summer"),
                  Plants(namePlant: "Date Palm Tree",
                         imagePlant:  UIImage(named: "Date")!,
                         sun: "Full sun",
                         water: "1-2 times a week",
                         fertilizer: "Give fertilizer during the late winter to prep the tree for its fruit production in the coming months"),
                  Plants(namePlant: "Cedar  Bonsai",
                         imagePlant: UIImage(named:"CedarBonsai"),
                         sun: "Full sun",
                         water: "Daily",
                         fertilizer: "Cedar trees need a balanced and organic fertilizer."),
                  Plants(namePlant: "Cherry Tree",
                         imagePlant: UIImage(named: "CherryTree")!,
                         sun: "Full sun",
                         water: " 1-2 times a week",
                         fertilizer: " Use a fertilizer that’s low in nitrogen late in the winter, or in the early spring. About a month before your trees flower is the best time to fertilize."),
                  Plants(namePlant: "Clusia Princess",
                         imagePlant:UIImage(named: "ClusaPrincess")!,
                         sun:" Full sun",
                         water: "1-2 times a week",
                         fertilizer: "it is necessary to fertilize it three times a year. It is recommended to use granular fertilizer in spring, summer and autumn")],
                 
                 
                 [Plants(namePlant: "Rosemary",
                         imagePlant: UIImage(named: "Rosemary2")!,
                         sun:"Full sun",
                         water: "Every 7-10 days",
                         fertilizer: "Fertilizer: Use an organic 20-20-20 non-acidic liquid fertilizer, applied every other week"),
                  Plants(namePlant: "Mint",
                         imagePlant:UIImage(named: "Mint")!,
                         sun: "Part - Full",
                         water:  "Every 3-5 days",
                         fertilizer: " Granular fertilizer in early spring after all danger of frost has passed and new growth emerges,"),
                  Plants(namePlant: "Mache",
                         imagePlant:  UIImage(named: "Msche")!,
                         sun: "Part sun",
                         water: "Every 2 days",
                         fertilizer: "Fertilizer: Because the growing season for mache is so short, no fertilizer is necessary. If the soil needs nutrients, add well-rotted compost or manure before planting, which will provide nutrients for healthy growth. "),
                  
                  Plants(namePlant: "Basil",
                         imagePlant: UIImage(named: "Basil")!,
                         sun: "Full sun",
                         water: "Daily",
                         fertilizer: "Fertilizer: every four to six weeks for indoor plants and every 2-3 weeks for outdoor."),
                  
                  Plants(namePlant: "Cilantro (Coriander)",
                         imagePlant: UIImage(named: "cilantro ")!,
                         sun: "Part-full",
                         water: "2-3 times a week",
                         fertilizer: "Fertilize every other week with a balanced 10-10-10 water-soluble fertilizer after plants reach about 2 inches tall. Keep the soil lightly moist but not waterlogged."),
                  
                  Plants(namePlant: "Oregano",
                         imagePlant: UIImage(named:"Oregano")!,
                         sun: "Full sun",
                         water: "1-2 times a week",
                         fertilizer: "Fertilize every other week with a balanced 10-10-10 water-soluble fertilizer after plants reach about 2 inches tall")],
                 
                 [Plants(namePlant: "Areca Palm",
                         imagePlant: UIImage(named: "ArecaPalm")!,
                         sun: "Part-Full",
                         water: "1-2 times a week",
                         fertilizer: "Fertilizer: Areca palms need regular fertilizer. Use up to 1 1/2 pounds of fertilizer per 100 square feet of palm canopy"
                        ),
                  Plants(namePlant: "Kentia Palm",
                         imagePlant: UIImage(named: "Kentia")!,
                         sun: "Part sun",
                         water: "Once a week",
                         fertilizer: "Fertilize your kentia palm monthly, but only in the spring and summer, with liquid fertilizer or slow-release pellets (a specially-formulated palm fertilizer is preferable)."),
                  
                  Plants(namePlant: "Sago Palm",
                         imagePlant: UIImage(named: "SagoPalm")!,
                         sun: "Part-Full",
                         water: "Every3-5days",
                         fertilizer: "Fertilizer: Choose a slow-release palm fertilizer"),
                  
                  Plants(namePlant: "Lady Palm",
                         imagePlant: UIImage(named: "LadyPalm")!,
                         sun: "Full sun",
                         water: "1 to 2 times a week",
                         fertilizer: "Fertilizer: Take care not to over-fertilize a lady palm plant. Feed them only in summer"),
                  
                  Plants(namePlant: "Parlor Palm",
                         imagePlant: UIImage(named: "Parlor")!,
                         sun: "Part-Full",
                         water: "Once a week",
                         fertilizer: "Fertilizer: It is not necessary to feed these palms often, but since each pot usually has many individual plants clumped together, it's a good idea to feed them twice a growing season with a high nitrogen slow-release fertilizer."),
                  
                  Plants(namePlant: "Majestic Palm",
                         imagePlant: UIImage(named: "Majestic")!,
                         sun: "Full sun",
                         water: "1 to 2 times a week",
                         fertilizer: "Fertilizer: Majesty Palm in pots requires more nitrogen than other nutrients. To potted Majesty Palms, apply slow-release fertilizer every three months")],
                 
                 [Plants(namePlant: "Aloe Vera",
                         imagePlant:  UIImage(named: "AloeVera")!,
                         sun: "Full Sun",
                         water: "2 to 3 times a week",
                         fertilizer: "Fertilizer: The best fertilizers to use are liquid 10-40-10 houseplant mixes, or mixes designed specifically for succulents. Avoid granular fertilizers. If your aloe is in a container, water it thoroughly the day before feeding. This should flush out any lingering salts and reduce the risk of tip burn"),
                  
                  Plants(namePlant: "Agave",
                         imagePlant:UIImage(named: "Agave")!,
                         sun: "Full Sun",
                         water: "Once a week",
                         fertilizer: " Fertilizer: Late spring and summer are the times to feed your container grown agave with a balanced (20-20-20), all-purpose liquid fertilizer at half-strength once a month"),
                  
                  Plants(namePlant: "Blue Agave",
                         imagePlant: UIImage(named: "BlueAgave")!,
                         sun: "Full Sun",
                         water: "Once a week",
                         fertilizer: "Fertilizer: Feed the blue agave in early spring when new growth is evident"),
                  
                  Plants(namePlant: "Haworthia Retusa",
                         imagePlant: UIImage(named: "haworthia retusa")!,
                         sun: "Part-Full",
                         water: "Every 2-3 weeks",
                         fertilizer: "Fertilizer: If haworthia retusa succulents are growing in soil, use a balanced fertilizer that contains three major plant nutrients: nitrogen, phosphorus, and potassium. Dilute the fertilizer by adding water before applying it to your plants."),
                  
                  Plants(namePlant: "Lace Aloe",
                         imagePlant: UIImage(named: "LaceAloe")!,
                         sun: "Part-Full",
                         water: "Every 2 weeks",
                         fertilizer: "Fertilizer: The best fertilizers to use are liquid 10-40-10 houseplant mixes, or mixes designed specifically for succulents. Avoid granular fertilizers. If your aloe is in a container, water it thoroughly the day before feeding. This should flush out any lingering salts and reduce the risk of tip burn"),
                  
                  
                  Plants(namePlant: "Snake rePlant",
                         imagePlant: UIImage(named: "SnakePlant")!,
                         sun: "Part sun",
                         water: "Every 10-14 days",
                         fertilizer: "Fertilizer: Avoid overfertilizing. fed once each spring gives your snake plant the primary, secondary and micronutrients it needs. Then it keeps gently feeding for up to four months.")]
                 
                 ,
                 [Plants(namePlant: "Boston Fern",
                         imagePlant: UIImage(named: "Boston")!,
                         sun: "Part sun",
                         water: "2-3 times a weeks",
                         fertilizer: "Fertilizer: In the spring and summer, Boston ferns need to be fertilized once a month."),
                  
                  Plants(namePlant: "Asparagus Fern",
                         imagePlant: UIImage(named: "Asparagus Fern")!,
                         sun: "Part sun",
                         water: "Every 2 days",
                         fertilizer: "Fertilizer: Feed asparagus fern with liquid or water-soluble all-purpose plant food diluted to half strength. During summer, the plant may need weekly feedings"),
                  
                  Plants(namePlant: "Crocodile Fern",
                         imagePlant: UIImage(named: "crocodile")!,
                         sun: "Part - Shade",
                         water: "2 to 3 times a week",
                         fertilizer: " Fertilizer: provide a diluted water-soluble fertilizer or a special fern fertilizer once every month during spring and summer. "),
                  
                  Plants(namePlant: "Bird Nest Fern",
                         imagePlant: UIImage(named: "Birds")!,
                         sun: "part-Shade",
                         water: "Every 2-3 days",
                         fertilizer: "Fertilizer: Once a month with a balanced liquid fertilizer that's diluted to half strength"),
                  
                  Plants(namePlant: "Rosy Maiden Hair Fern",
                         imagePlant: UIImage(named: "Rosy")!,
                         sun: "part-Shade",
                         water: "1-2 times a week",
                         fertilizer: "Fertilizer: Every four to six weeks during the active growing season to keep from overfeeding."),
                  
                  Plants(namePlant: "Kimberly Queen Fern",
                         imagePlant: UIImage(named: "Queen")!,
                         sun: "part-Shade",
                         water: "Every 2-3 days",
                         fertilizer: "Fertilizer: Use a general houseplant fertilizer at half strength once every three months. Never feed a fern when the soil is dry, "),
                  
                  Plants(namePlant: "Elkhorn Fern",
                         imagePlant: UIImage(named: "Elkhorn Fern")!,
                         sun: "Part sun",
                         water: "1 to 2 times a week",
                         fertilizer: "Fertilizer: A slow-release fertilizer applied once or twice a year is usually enough ")],
                 
                 
                 [Plants(namePlant: "Asiatic Lilies",
                         imagePlant: UIImage(named: "AsiaticLilies")!,
                         sun: "Part sun",
                         water: "1 to 2 times a week",
                         fertilizer: " Fertilizer: You can top dress with slow-release fertilizer as well, or feed in early spring with fish emulsion, worm castings, compost tea, or a nitrogen plant food. When buds appear on the Asiatic lily, feed with a high phosphorus food, or bone meal, to make blooms bigger and last longer."),
                  
                  Plants(namePlant: "Carnation",
                         imagePlant: UIImage(named: "Carnation")!,
                         sun: "Full sun",
                         water: "1 to 2 times a week",
                         fertilizer: " Use a fertilizer specifically made for flowers that contains equal or less amounts of nitrogen than phosphorus." ),
                  
                  Plants(namePlant: "Peony",
                         imagePlant: UIImage(named: "Peony")!,
                         sun: "part-full",
                         water: "Once a week",
                         fertilizer: "Use a fertilizer low in nitrogen to prevent the peony from putting up too much dense, leafy growth and to encourage blooms. Fertilize first thing in the spring, when you see new shoots starting to come out of the ground."),
                  
                  Plants(namePlant: "petunia",
                         imagePlant: UIImage(named: "petunia")!,
                         sun: "Full sun",
                         water: "1 to 2 times a week",
                         fertilizer: "Fertilizer: Apply a slow release fertilizer at the time of planting, then follow up with a liquid fertilizer every week or two throughout the season."),
                  
                  Plants(namePlant: "Rose",
                         imagePlant: UIImage(named: "rose")!,
                         sun: "Full sun",
                         water: "1 to 2 times a week" ,
                         fertilizer: " Fertilizer: Most roses need regular feeding throughout the growing season. For newly-planted roses, add plenty of compost to the hole at planting time, and then provide a liquid fertilizer (synthetic or organic) about a month later"),
                  
                  Plants(namePlant: "False Sunflower",
                         imagePlant: UIImage(named: "sunflower")!,
                         sun: "Full sun",
                         water: "Every 2-3 days",
                         fertilizer: " Fertilizer: nitrogen is extremely important. Fertilization of sunflowers with added nitrogen will contribute to the overall green growth of the plant. Fertilizing a sunflower with nitrogen will increase the height of the plant too")]]
  
  var selectedCellPlant : UILabel?
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
    
    tableView.delegate = self
    tableView.dataSource = self
    
  }
  // MARK: - Methods
  
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return typesOfPlants.count
  }
  
  
  func tableView(_ tableView: UITableView,
                 heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrRows[section].count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Plantcell", for :indexPath) as? LISTTableViewCell
    
    cell?.nameLAB.text = arrRows[indexPath.section][indexPath.row].namePlant
    cell?.plantImage.image = arrRows[indexPath.section][indexPath.row].imagePlant
    
    return cell!
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let plants = arrRows[indexPath.row]
    
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DeetailVC
    if let viewController = vc {
      viewController.namePlant = plants[indexPath.row]
      
      viewController.image = plants[indexPath.row].imagePlant!
      // viewController.image = plant[indexPath.row].imagePlant!
      
      present(viewController, animated: true,
              completion: nil)
      
    }
  }
}

struct Plants {
  
  var namePlant : String
  var imagePlant : UIImage? = nil
  var sun : String
  var water : String
  var fertilizer: String
}

