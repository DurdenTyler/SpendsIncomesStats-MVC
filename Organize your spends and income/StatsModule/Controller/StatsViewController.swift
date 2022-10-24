//
//  StatsViewController.swift
//  Organize your spends and income
//
//  Created by Ivan White on 23.10.2022.
//

import UIKit

class StatsViewController: UIViewController {
    
    private let statsView = StatsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(statsView)
    }

}


//MARK: SetConstraints
extension StatsViewController {
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            statsView.topAnchor.constraint(equalTo: view.topAnchor),
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            statsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            statsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
    }
}
