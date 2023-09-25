//
//  FirstHotelCell.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 25.09.2023.
//

import UIKit

final class FirstHotelCell: UICollectionViewCell {
    lazy var imageHotel: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "image 20")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var ratingHotel: UILabel = {
        var label = UILabel()
        let image = UIImage(systemName: "star.fill")
        
        label.textColor = #colorLiteral(red: 1, green: 0.6967958212, blue: 0.1078198925, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9998750091, green: 0.9553362727, blue: 0.7991145253, alpha: 1)
        label.layer.cornerRadius = 5
        label.text = "\(String(describing: image)) 5 Превосходно"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameHotel: UILabel = {
        var label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.backgroundColor = nil
        label.text = "Steigenberger Makadi"
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var adressHotel: UIButton = {
        var button = UIButton()
        var text = "Madinat Makadi, Safaga Road, Makadi Bay, Египет"
        
        button.backgroundColor = .white
        button.setTitle(text, for: .normal)
        button.titleLabel?.textColor = #colorLiteral(red: 0.05153781921, green: 0.446066618, blue: 0.9994400144, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var priceHotel: UILabel = {
        var label = UILabel()
        var price = "134 673"
        
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.backgroundColor = nil
        label.text = "от \(price) ₽"
        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var flyLabeHotel: UILabel = {
        var label = UILabel()
        var flyText = "за тур с перелётом"
        
        label.textColor = #colorLiteral(red: 0.510109961, green: 0.5300604701, blue: 0.5896220207, alpha: 1)
        label.backgroundColor = nil
        label.text = "от \(flyText) ₽"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        settingsView()
        constraintsView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func settingsView() {
        contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        contentView.layer.cornerRadius = 12
        contentView.layer.masksToBounds = true
        
    }
    
    private func constraintsView() {
        contentView.addSubview(imageHotel)
        contentView.addSubview(ratingHotel)
        contentView.addSubview(nameHotel)
        contentView.addSubview(adressHotel)
        contentView.addSubview(priceHotel)
        contentView.addSubview(flyLabeHotel)
        
        NSLayoutConstraint.activate([
            imageHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 101),
            imageHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            imageHotel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            imageHotel.widthAnchor.constraint(equalToConstant: 343),
            imageHotel.heightAnchor.constraint(equalToConstant: 257),
            imageHotel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            ratingHotel.topAnchor.constraint(equalTo: imageHotel.bottomAnchor, constant: 20),
            ratingHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            nameHotel.topAnchor.constraint(equalTo: ratingHotel.bottomAnchor, constant: 20),
            nameHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            adressHotel.topAnchor.constraint(equalTo: nameHotel.bottomAnchor, constant: 20),
            adressHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            priceHotel.topAnchor.constraint(equalTo: adressHotel.bottomAnchor, constant: 30),
            priceHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            flyLabeHotel.leadingAnchor.constraint(equalTo: priceHotel.leadingAnchor, constant: 20),
            flyLabeHotel.topAnchor.constraint(equalTo: adressHotel.bottomAnchor, constant: 30),
        ])
    }
}
