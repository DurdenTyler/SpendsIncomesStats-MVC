//
//  Separator.swift
//  Organize your spends and income
//
//  Created by Ivan White on 26.10.2022.
//

import UIKit

class Separator: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = #colorLiteral(red: 0.9061687589, green: 0.9061687589, blue: 0.9061687589, alpha: 1)
    }
    
}
