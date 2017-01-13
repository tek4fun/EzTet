//
//  DetailVC.swift
//  EzTet
//
//  Created by iOS Student on 1/13/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var imageViewCell: UIImage!
    var imageName: String?
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.red
        self.title = imageName
        self.imageView.image = imageViewCell
    }



}
