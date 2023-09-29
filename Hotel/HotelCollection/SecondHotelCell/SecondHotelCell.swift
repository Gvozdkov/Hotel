//
//  SecondHotelCell.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 29.09.2023.
//

import UIKit

final class SecondHotelCell: UICollectionViewCell {
    private let buttonsFromTheTable = ButtonsFromTheTable()
    
    private lazy var mainTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.text = "Об отеле"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoHotel: UILabel = {
        var labelText = "Отель VIP-класса с собственными гольф полями. Высокий уровень сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!"
        
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 0
        label.text = labelText
        label.textAlignment = .left
//        label.text = String(labelText.prefix(45))
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        settingsView()

        buttonsFromTheTable.view.translatesAutoresizingMaskIntoConstraints = false
        
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
        contentView.addSubview(infoHotel)
        contentView.addSubview(buttonsFromTheTable.view)

        NSLayoutConstraint.activate([
            mainTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            mainTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),

            infoHotel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 136),
            infoHotel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            infoHotel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            infoHotel.widthAnchor.constraint(equalToConstant: 343),
            infoHotel.heightAnchor.constraint(equalToConstant: 77),
            
            buttonsFromTheTable.view.topAnchor.constraint(equalTo: topAnchor, constant: 228),
            buttonsFromTheTable.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            buttonsFromTheTable.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            buttonsFromTheTable.view.heightAnchor.constraint(equalToConstant: 184)
        ])
    }
    
}
