//
//  ItemsTableViewController.swift
//  HinakkoKadai13
//
//  Created by Hina on 2023/07/11.
//

import UIKit

class ItemsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        let KeyName = "Name"
        let KeyCheck = "Check"

        var items: [Dictionary<String,Any>] = []

        override func viewDidLoad() {
            super.viewDidLoad()

            self.items = [
                [KeyName:"りんご", KeyCheck:false],
                [KeyName:"みかん", KeyCheck:true],
                [KeyName:"バナナ", KeyCheck:false],
                [KeyName:"パイナップル", KeyCheck:true]
            ]
        }


    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }


     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! ItemTableViewCell

        let item = items[indexPath.row]

        if item[KeyCheck] as? Bool == true {
            cell.checkImageView.image = UIImage(named: "checkMark")
        } else {
            cell.checkImageView.image = nil
        }

        cell.nameLabel.text = (item[KeyName] as? String) ?? ""

        return cell
    }
}
