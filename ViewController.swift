//
//  ViewController.swift
//  EncryptionApp
//
//  Created by Tommy Bartocci on 6/26/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var menuItemsTableView: UITableView!
    
    let menuItems = [
        MenuItem(title: "About", imgURL: "https://icongr.am/clarity/info-standard.svg?size=128&color=000")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.font = .SofiaSans(name: "bold", size: 50)
        
        menuItemsTableView.delegate = self
        menuItemsTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuViewCell
        cell.configureCell(title: menuItems[indexPath.row].title, imgURL: menuItems[indexPath.row].imgURL)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

