//
//  ViewController.swift
//  Hotel
//
//  Created by Алексей Гвоздков on 25.09.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    private let hotelCollection = HotelCollection()

    override func viewDidLoad() {
        super.viewDidLoad()
        settingsViewController()
        addChild(hotelCollection)

        hotelCollection.view.translatesAutoresizingMaskIntoConstraints = false
        hotelCollection.didMove(toParent: self)
    }
    
    private func settingsViewController() {
        view.backgroundColor = .white
        view.addSubview(hotelCollection.view)
        
        NSLayoutConstraint.activate([
            hotelCollection.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            hotelCollection.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            hotelCollection.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            hotelCollection.view.heightAnchor.constraint(equalToConstant: 900),
        ])
    }
}

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = ViewController
        
    func makeUIViewController(context: Context) -> ViewController {
        ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}
