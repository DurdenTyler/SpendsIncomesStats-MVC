//
//  ViewController.swift
//  Organize your spends and income
//
//  Created by Ivan White on 23.10.2022.
//

import UIKit

class SpendsViewController: UIViewController {
    
    private let spendsView = SpendsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(spendsView)
    }

}


//MARK: SetConstraints
extension SpendsViewController {
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            spendsView.topAnchor.constraint(equalTo: view.topAnchor),
            spendsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            spendsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            spendsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
    }
}
