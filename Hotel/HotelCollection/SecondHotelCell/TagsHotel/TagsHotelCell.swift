//
//  TegsHotelCell.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 30.09.2023.
//

import UIKit

final class TegsHotelCell: UITableViewCell {
    private lazy var tags: UILabel = {
        let label = UILabel()
        label.text = "Удобства"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        settingsViewController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func settingsViewController() {
        
        contentView.addSubview(tags)

        
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 60),
            
            tags.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            tags.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            tegs.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
}

