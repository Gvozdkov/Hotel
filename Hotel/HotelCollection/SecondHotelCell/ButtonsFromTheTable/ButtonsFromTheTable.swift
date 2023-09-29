//
//  ButtonsFromTheTable.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 29.09.2023.
//

import UIKit

final class ButtonsFromTheTable: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ButtonFirstCell.self, forCellReuseIdentifier: "ButtonFirstCell")
        tableView.register(ButtonSecondCell.self, forCellReuseIdentifier: "ButtonSecondCell")
        tableView.register(ButtonThirdCell.self, forCellReuseIdentifier: "ButtonThirdCell")
        settingsTableView()
    }
    
    private func settingsTableView() {
        tableView.isScrollEnabled = false
        tableView.backgroundColor = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9882352941, alpha: 1)
        tableView.layer.cornerRadius = 15
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonFirstCell", for: indexPath) as? ButtonFirstCell {
                cell.backgroundColor = UIColor.clear
                return cell
            } else {
                fatalError("Error - ButtonFirstCell")
            }
        } else if indexPath.item == 1 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonSecondCell", for: indexPath) as? ButtonSecondCell {
                cell.backgroundColor = UIColor.clear
                return cell
            } else {
                fatalError("Error - ButtonSecondCell")
            }
        } else if indexPath.item == 2 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonThirdCell", for: indexPath) as? ButtonThirdCell {
                cell.backgroundColor = UIColor.clear
                return cell
            } else {
                fatalError("Error - ButtonThirdCell")
            }
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
