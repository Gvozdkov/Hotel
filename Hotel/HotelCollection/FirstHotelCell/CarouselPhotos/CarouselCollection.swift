//
//  CarouselCollection.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 26.09.2023.
//

import UIKit

final class CarouselCollection: UICollectionViewController {
    
    var photos: [String] = ["image 20", "image 21"]
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // горизонтальная прокрутка
        layout.minimumLineSpacing = 0// минимальное расстояние между ячейками
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 50, height: 200) // размер каждой ячейки
        
        super.init(collectionViewLayout: layout)
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.contentInset = UIEdgeInsets.zero
        collectionView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsCollectionView()
        
        collectionView.register(CarouselCell.self, forCellWithReuseIdentifier: "CarouselCell")
    }
    
    private func settingsCollectionView() {
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isPagingEnabled = true // Включить пагинацию для перелистывания по одной картинке за раз
        collectionView.clipsToBounds = true
        collectionView.layer.cornerRadius = 15
        collectionView.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9764705882, alpha: 1)
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarouselCell", for: indexPath) as? CarouselCell else {
            fatalError("Error - CarouselCell")
        }
        
        let photo = photos[indexPath.item]
        cell.imageView.image = UIImage(named: photo)
        return cell
    }
}
