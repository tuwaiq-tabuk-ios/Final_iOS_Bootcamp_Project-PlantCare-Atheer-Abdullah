//
//  NewPlantViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 13/06/1443 AH.
//

import UIKit
import Firebase
import FirebaseAuth
import PhotosUI

class TasksPlantVC : UIViewController , UITextFieldDelegate , UINavigationControllerDelegate, UIImagePickerControllerDelegate, PHPickerViewControllerDelegate {
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var imageYourPlant: UIImageView!
  @IBOutlet weak var namePlantTF: UITextField!
  @IBOutlet weak var water: UITextField!
  @IBOutlet weak var dateP: UIDatePicker!
  @IBOutlet weak var toolbar: UIToolbar!
  @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
    view.endEditing(true)
  }
  
  // MARK: - Properties
  
  var item: Item!
  { didSet {
    navigationItem.title = item.nameyourPlant
  }
  }
  
  var imageStore: ImageStore!
  
  let numberFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    return formatter
  }()
  
  
  
  // MARK: - View controller lifecycle
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    configureDatePicker()
    configureToolbar()
    
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
    
  }
  
  // MARK: - Navigation
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    namePlantTF.text = item.nameyourPlant
    water.text = item.water
    numberFormatter.string(from: NSNumber(value: item.value))
    dateP.date = item.dateWater
    // Get the item key
    let key = item.id
    
    // If there is an associated image with the item, display it on the image view
    let imageToDisplay = ImageStore.image(forKey: key)
    imageYourPlant.image = imageToDisplay
    
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    // Clear first responder
    view.endEditing(true)
    // "Save" changes to item
    item.nameyourPlant = namePlantTF.text ?? ""
    item.water = water.text
    
  }
  // MARK: - Action
  
  
  @IBAction func save(_ sender: UIButton) {
    
    let db = Firestore.firestore()
    let id = UUID().uuidString
    db.collection("details").document(id).setData([
      "MyNewPlant": namePlantTF.text!.trimmingCharacters(in: .whitespacesAndNewlines),
      "Water": water.text!.trimmingCharacters(in: .whitespacesAndNewlines) ,
      "datePicker": dateP.date
    ]) { err in
      if let err = err {
        print("Error writing document: \(err)")
      } else {
        print("Document successfully written!")
      }
    }
    
    
  }
  // MARK: - Methods
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true }
  
  
  
  func presentImagePicker() {
    let imagePicker = UIImagePickerController()
    imagePicker.sourceType = .camera
    imagePicker.delegate = self
    imagePicker.allowsEditing = true
    present(imagePicker, animated: true, completion: nil)
  }
  
  
  func configureToolbar() {
    
    let supportsCamera = UIImagePickerController.isSourceTypeAvailable(.camera)
    let cameraAction = UIAction(title: "Camera",
                                image: UIImage(systemName: "camera"),
                                attributes: supportsCamera ? [] : [.hidden]){
      [weak self]_ in
      self?.presentImagePicker()
      
    }
    
    let photoLibraryAction = UIAction(title: "Photo Library",image: UIImage(systemName: "photo.on.rectangle")) {
      [weak self]_ in
      self?.presentPhotoPicker()
    }
    
    let menu = UIMenu(children: [cameraAction, photoLibraryAction])
    
    let cameraItem = UIBarButtonItem(systemItem: .camera, menu: menu)
    toolbar.items = [cameraItem]
    
  }
  
  
  func configureDatePicker() {
    let action = UIAction { [weak self] _ in
      // self.item.dateCreated = self.datePicker.date
      
      if let self = self {
        self.item.dateWater = self.dateP.date
      }
    }
    dateP.addAction(action, for: .valueChanged)
  }
  
  
  func imagePickerController(_ picker: UIImagePickerController,
                             didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    
    dismiss(animated: true, completion: nil)
    
    
    let image = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
    
    // Store the image in the ImageStore for the item's key
    ImageStore.setImage(image, forKey: item.id)
    // Put that image on the screen in the image view
    imageYourPlant.image = image
  }
  
  
  func presentPhotoPicker() {
    var configuration = PHPickerConfiguration()
    configuration.selectionLimit = 1
    configuration.filter = .images
    let photoPicker = PHPickerViewController(configuration: configuration)
    photoPicker.delegate = self
    present(photoPicker, animated: true, completion: nil)
  }
  
  
  func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
    dismiss(animated: true, completion: nil)
    
    if let result = results.first, result.itemProvider.canLoadObject(ofClass: UIImage.self) {
      result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
        if let image = image as? UIImage {
          // Store the image in the ImageStore for the item's key
          ImageStore.setImage(image, forKey: self.item.id)
          // Put that image on the screen in the image view
          DispatchQueue.main.async {
            self.imageYourPlant.image = image
          }
        }
        
      }
    }
    
  }
}



