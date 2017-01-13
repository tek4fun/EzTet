//
//  Food.swift
//  EzAnTet
//
//  Created by iOS Student on 1/12/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class Food {
    var name: String?
    var photo: UIImage?
    init(name:String,photo: String)
    {
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
    }
}
