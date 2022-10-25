//
//  SpendsView.swift
//  Organize your spends and income
//
//  Created by Ivan White on 24.10.2022.
//

import UIKit

class SpendsView: UIView {
    
    private let spendsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Расходы"
        label.textColor = .secondaryLabel
        label.font = UIFont.systemFont(ofSize: 19, weight: .medium)
        return label
    }()
    
    private let separatorUnderTitle: UIView = {
        let separator = UIView()
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = #colorLiteral(red: 0.9061687589, green: 0.9061687589, blue: 0.9061687589, alpha: 1)
        return separator
    }()
    
    private let customInputTextField = CustomTextField()
    
    private let categories = Categories()
    
    

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.addSubview(spendsTitle)
        self.addSubview(separatorUnderTitle)
        self.addSubview(customInputTextField)
        self.addSubview(categories)
    }
    
}

//MARK: SetConstraints
extension SpendsView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            spendsTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            spendsTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5)
        ])
        
        NSLayoutConstraint.activate([
            separatorUnderTitle.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40),
            separatorUnderTitle.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            separatorUnderTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            separatorUnderTitle.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            customInputTextField.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            customInputTextField.topAnchor.constraint(equalTo: self.separatorUnderTitle.bottomAnchor, constant: 20),
            customInputTextField.widthAnchor.constraint(equalToConstant: 350),
            customInputTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            categories.topAnchor.constraint(equalTo: customInputTextField.bottomAnchor, constant: 25),
            categories.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            categories.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            categories.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
