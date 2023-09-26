//
//  FirstHotelCell.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 25.09.2023.
//

import UIKit
import SwiftUI

final class FirstHotelCell: UICollectionViewCell {
    private lazy var mainTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.text = "Отель"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var imageHotel: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "image 20")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
  
    private lazy var ratingHotel: UILabel = {
        // Создаем NSAttributedString с изображением и текстом
        let starImage = NSTextAttachment()
        starImage.image = UIImage(named: "Star")
        let imageString = NSAttributedString(attachment: starImage)
        let textString = NSAttributedString(string: " 5 Превосходно")
        
        // Создаем комбинированную атрибутированную строку
        let attributedString = NSMutableAttributedString()
        attributedString.append(imageString)
        attributedString.append(textString)
        
        // Создаем UILabel с атрибутированным текстом
        let label = UILabel()
        label.attributedText = attributedString
        
        label.textColor = #colorLiteral(red: 1, green: 0.6967958212, blue: 0.1078198925, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9998750091, green: 0.9553362727, blue: 0.7991145253, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    
    private lazy var nameHotel: UILabel = {
        var label = UILabel()
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.text = "Steigenberger Makadi"
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var adressHotel: UIButton = {
        var button = UIButton()
        var text = "Madinat Makadi, Safaga Road, Makadi Bay, Египет"
        
        button.setTitle(text, for: .normal)
        button.setTitleColor(UIColor(red: 0.05098039216, green: 0.4470588235, blue: 1, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var priceHotel: UILabel = {
        var label = UILabel()
        var price = "134 673"
        
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.text = "от \(price) ₽"
        label.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var flyLabeHotel: UILabel = {
        var label = UILabel()
        var flyText = "за тур с перелётом"
        
        label.textColor = #colorLiteral(red: 0.510109961, green: 0.5300604701, blue: 0.5896220207, alpha: 1)
        label.text = "\(flyText)"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular )
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
        contentView.addSubview(mainTitle)
        contentView.addSubview(imageHotel)
        contentView.addSubview(ratingHotel)
        contentView.addSubview(nameHotel)
        contentView.addSubview(adressHotel)
        contentView.addSubview(priceHotel)
        contentView.addSubview(flyLabeHotel)
        
        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13),
            mainTitle.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            imageHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 51),
            imageHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            imageHotel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            imageHotel.widthAnchor.constraint(equalToConstant: 343),
            imageHotel.heightAnchor.constraint(equalToConstant: 257),
            imageHotel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            ratingHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 324),
            ratingHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ratingHotel.widthAnchor.constraint(equalToConstant: 149),
            ratingHotel.heightAnchor.constraint(equalToConstant: 29),
            
            nameHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 361),
            nameHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            adressHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 395),
            adressHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            adressHotel.heightAnchor.constraint(equalToConstant: 17),
            
            priceHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 428),
            priceHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            
            flyLabeHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 442),
            flyLabeHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 198),
        ])
    }
}

struct VviewControllerRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = HotelCollection
    func makeUIViewController(context: Context) -> HotelCollection {
        HotelCollection()
    }

    func updateUIViewController(_ uiViewController: HotelCollection, context: Context) {

    }

}

struct VviewController_Previews: PreviewProvider {
    static var previews: some View {
        VviewControllerRepresentable()
    }
}
