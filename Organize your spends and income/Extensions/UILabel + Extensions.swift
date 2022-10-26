//
//  UILabel + Extensions.swift
//  Organize your spends and income
//
//  Created by Ivan White on 26.10.2022.
//

import UIKit

extension UILabel {
    convenience init(text: String) {
        self.init()
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        self.textColor = .white
        self.backgroundColor = UIColor(named: "blackBlue")
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.textAlignment = .center
    }
    
    convenience init(title: String) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = title
        self.textColor = .secondaryLabel
        self.font = UIFont.systemFont(ofSize: 19, weight: .medium)
    }
}
