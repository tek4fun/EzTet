//
//  ViewController.swift
//  EzTet
//
//  Created by iOS Student on 1/13/17.
//  Copyright © 2017 tek4fun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataManager = DataManager.instance.data
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let food = dataManager[indexPath.item] as! Food
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubviews()
        cell.imageViewCell.image = food.photo
        cell.nameLabel.text = food.name
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            dataManager.removeObject(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //get id controller
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        //get id list
        let food = dataManager[indexPath.item] as! Food
        detailVC.imageViewCell = food.photo
        detailVC.imageName = food.name

        //push data to view
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
