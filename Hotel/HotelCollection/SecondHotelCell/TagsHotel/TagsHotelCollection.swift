//
//  TagsHotel.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 29.09.2023.
//

import UIKit

final class TagsHotelCollection: UICollectionViewController {
    
    private var textCell: [String] = ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"]
    
    init() {
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal // горизонтальная прокрутка
//        layout.minimumLineSpacing = 0// минимальное расстояние между ячейками
//        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 30, height: 200) // размер каждой ячейки
        let layout = UICollectionViewFlowLayout()
        let width = (UIScreen.main.bounds.width - 10) / 2 // 10 - это расстояние между двумя ячейками. Вы можете изменить это значение по своему усмотрению.
        layout.itemSize = CGSize(width: width, height: 200)
        layout.minimumInteritemSpacing = 10 // расстояние между ячейками по горизонтали
        layout.minimumLineSpacing = 10 // расстояние между строками
        
        super.init(collectionViewLayout: layout)
//        collectionView.contentInsetAdjustmentBehavior = .never
//        collectionView.contentInset = UIEdgeInsets.zero
//        collectionView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "DefaultCellIdentifier")
        settingsCollectionView()
    }
    
    private func settingsCollectionView() {
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.layer.cornerRadius = 5
        collectionView.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9764705882, alpha: 1)
//        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textCell.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DefaultCellIdentifier", for: indexPath)
        
        // Создаем UILabel
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: cell.frame.width, height: cell.frame.height))
        label.textColor = .gray
        label.backgroundColor = .lightGray
        label.text = textCell[indexPath.item]
        label.textAlignment = .center
        
        // Добавляем UILabel к ячейке
        cell.contentView.addSubview(label)
        
        return cell
    }
}
