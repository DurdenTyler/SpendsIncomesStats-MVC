//
//  IncomeViewController.swift
//  Organize your spends and income
//
//  Created by Ivan White on 23.10.2022.
//

import UIKit

class IncomesViewController: UIViewController {
    
    private let incomesView = IncomesView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(incomesView)
    }

}


//MARK: SetConstraints
extension IncomesViewController {
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            incomesView.topAnchor.constraint(equalTo: view.topAnchor),
            incomesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            incomesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            incomesView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
    }
}
