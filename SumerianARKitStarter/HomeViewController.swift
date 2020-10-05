//
//  HomeViewController.swift
//  SumerianARKitStarter
//
//  Created by Iresh Dudeja on 05/10/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var imagePicker: ImagePicker!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imagePickerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func imagePickerButtonTapped(_ sender: UIButton) {
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        self.imagePicker.present(from: sender)
    }
}

extension HomeViewController: ImagePickerDelegate {

    func didSelect(image: UIImage?) {
        guard let image = image else {
            return
        }
        self.imageView.image = image
    }
}
