//
//  ViewController.swift
//  SeeFood
//
//  Created by Hanna Putiprawan on 2/25/21.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false // allow to edit image
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil) // present a user to choose image from lib or taking new picture
    }
    
}

extension ViewController: UIImagePickerControllerDelegate {
    // Tells the delegate that the user picked an image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Make sure the picked image wasn't nil, make sure the user pick an image
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
}

extension ViewController: UINavigationControllerDelegate {
    
}
