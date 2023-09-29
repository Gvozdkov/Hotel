//
//  File.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 25.09.2023.
//

import UIKit

final class HotelCollection: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9764705882, alpha: 1)
        self.collectionView?.register(FirstHotelCell.self, forCellWithReuseIdentifier: "FirstHotelCell")
        self.collectionView?.register(SecondHotelCell.self, forCellWithReuseIdentifier: "SecondHotelCell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstHotelCell", for: indexPath) as? FirstHotelCell {
                return cell
            } else {
                fatalError("Error - FirstHotelCell")
            }
        } else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondHotelCell", for: indexPath) as? SecondHotelCell {
                return cell
            } else {
                fatalError("Error - SecondHotelCell")
            }
        }
    }
}

extension HotelCollection: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.minimumLineSpacing = 10
        }
        if indexPath.item == 0 {
            return CGSize(width: 375, height: 480)
        } else {
            return CGSize(width: 375, height: 428)
        }
    }
}


