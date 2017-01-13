//
//  DataManager.swift
//  EzAnTet
//
//  Created by iOS Student on 1/12/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import Foundation

class DataManager {
    static let instance = DataManager()

    var data = NSMutableArray()
    private init() {
        let filePath = Bundle.main.path(forResource: "Foods", ofType: "plist")
        let raw = NSDictionary(contentsOfFile: filePath!)
        let temp = NSMutableArray(capacity: raw!.count)
        for item in raw!
        {
            let food = Food(name: (item.value as AnyObject).value(forKey: "name") as! String, photo: (item.value as AnyObject).value(forKey: "photo") as! String)
            temp.add(food)
        }
        data = NSMutableArray(array: temp)
    }

}
