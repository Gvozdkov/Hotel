//
//  ButtonSecondCell.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 29.09.2023.
//

import UIKit

final class ButtonSecondCell: UITableViewCell {
    private lazy var title: UILabel = {
        let label = UILabel()
        label.text = "Что включено"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var subtitle: UILabel = {
        let label = UILabel()
        label.text = "Самое необходимое"
        label.textColor = #colorLiteral(red: 0.5098039216, green: 0.5294117647, blue: 0.5882352941, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [title, subtitle])
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var leftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Tick square")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var rightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Vector")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        settingsViewController()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func settingsViewController() {
        
        contentView.addSubview(stackView)
        contentView.addSubview(leftImageView)
        contentView.addSubview(rightImageView)
        
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 60),
            
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 55),
            stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            leftImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            leftImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            leftImageView.widthAnchor.constraint(equalToConstant: 24),
            leftImageView.heightAnchor.constraint(equalToConstant: 24),
            
            rightImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            rightImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            rightImageView.widthAnchor.constraint(equalToConstant: 6),
            rightImageView.heightAnchor.constraint(equalToConstant: 12)
            
        ])
    }
}
