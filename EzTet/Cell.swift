//
//  Cell.swift
//  EzAnTet
//
//  Created by iOS Student on 1/12/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    var nameLabel: UILabel!
    var imageViewCell: UIImageView!
    var kCellWidth: CGFloat = 400
    var kCellHeight: CGFloat = 200
    var kLabelHeight: CGFloat = 50

    override func addSubview(_ view: UIView) {
        if(imageViewCell == nil){
            imageViewCell = UIImageView(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kCellHeight))
            imageViewCell.layer.borderColor = tintColor.cgColor
            contentView.addSubview(imageViewCell)
        }
        if (nameLabel == nil) {
            nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kCellHeight))
            nameLabel.textAlignment = .left
            nameLabel.textColor = UIColor.red
            nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
            contentView.addSubview(nameLabel)
        }
    }

}
