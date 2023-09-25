//
//  ViewController.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 25.09.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var mainTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.text = "Отель"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsViewController()
    }
    
    
    private func settingsViewController() {
        view.backgroundColor = .white
        view.addSubview(mainTitle)
        
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 63),
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

