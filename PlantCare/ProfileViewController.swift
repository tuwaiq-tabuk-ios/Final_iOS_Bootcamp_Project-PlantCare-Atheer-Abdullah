//
//  ProfileSHViewController.swift
//  PlantCare
//
//  Created by Atheer abdullah on 07/06/1443 AH.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {


  @IBOutlet weak var firstName: UITextView!
  
  @IBOutlet weak var lastname: UITextView!
  

  @IBOutlet weak var logeOut: UIButton!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

  
    
      guard let uid = Auth.auth().currentUser?.uid,
            !uid.isEmpty else {
              
              return
            }
      
      fire
      
  }

//  private func setupContextMenu() {
// //     let interaction = UIContextMenuInteraction(delegate: self)
//    avatarImage.isUserInteractionEnabled = true
//    avatarImage.addInteraction(interaction)
//  }
//  
//  private func selectAvatar() {
//      let imagePicker = UIImagePickerController()
//      imagePicker.allowsEditing = true
//     // imagePicker.delegate = self
//      present(imagePicker, animated: true, completion: nil)
//  }
//  
//  private func setDefaultAvatar() {
//    avatarImage.image = UIImage(named: "User Circle")
//  }
//}
//
//extension ViewController: UIContextMenuInteractionDelegate {
//  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForHighlightingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview? {
//      let params = UIPreviewParameters()
//      params.backgroundColor = .clear
//     // let preview = UITargetedPreview(view: avatarImage, parameters: params)
//      return preview
//  }
//  
//  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
//   //   guard interaction.view === avatarImage else { return nil }
//      
//      return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { (suggestedActions) -> UIMenu? in
//          let chooseAvatar = UIAction(title: "Choose Avatar", image: UIImage(systemName: "pencil"), identifier: nil) { _ in
//     //         self.selectAvatar()
//          }
//          
//          let removeAvatar = UIAction(title: "Remove", image: UIImage(systemName: "trash"), identifier: nil, attributes: [.destructive]) { _ in
//     //         self.setDefaultAvatar()
//          }
//          
//          return UIMenu(title: "Avatar", image: nil, identifier: nil, options: [], children: [
//              chooseAvatar, self.buildPreselectedAvatars(), removeAvatar
//          ])
//      }
//  }
//  
//  private func buildPreselectedAvatars() -> UIMenu {
//      let avatars = ["ted", "gambit", "ficsit"]
//      let items = avatars.map { avatar -> UIAction in
//          let image = UIImage(named: avatar)
//          return UIAction(title: avatar, image: image, identifier: nil) { _ in
//      //        self.avatarImage.image = image
//          }
//      }
//      
//      let options: UIMenu.Options = avatars.count <= 5 ? .displayInline : []
//      return UIMenu(title: "Choose from existing...", image: nil, identifier: nil, options: options, children: items)
//  }
//}
//
//extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//      dismiss(animated: true, completion: nil)
//  }
//  
//  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//      if let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage {
//   //     avatarImage.image = image
//      }
//      dismiss(animated: true, completion: nil)
//  }
//}
//
//    
//    
//
//
}
