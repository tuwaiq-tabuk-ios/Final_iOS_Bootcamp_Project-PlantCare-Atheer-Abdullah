//
//  SearchPlsntsVC.swift
//  PlantCare
//
//  Created by Atheer abdullah on 17/06/1443 AH.
//

import UIKit
import WebKit

class SearchPlsntsVC: UIViewController , WKUIDelegate {
  
  // MARK: - Properties
  
  
  let webView = WKWebView()
  
  // MARK: - IBOutlets

  @IBOutlet var myView: UIView!
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
      myView.addSubview(webView)
      guard let myURL =
              URL(string: "https://www.plantsmap.com/explore/plants")else {
             return
              }
      webView.load(URLRequest(url: myURL))
    }
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    webView.frame = view.bounds
    overrideUserInterfaceStyle = .light
   navigationItem.setHidesBackButton(true, animated: true)
  }


}
